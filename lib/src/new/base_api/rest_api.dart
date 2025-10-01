import 'package:dio/dio.dart';
import 'package:google_maps_apis/src/new/utils/callbacks.dart';

class RestAPI {
  static const googleApiKeyKey = 'x-goog-api-key';
  static const authorizationHeaderKey = 'authorization';

  /// Underlying Dio client used by all new APIs.
  Dio dio = Dio();

  /// Set this adapter if you need control over http requests
  HttpClientAdapter? httpClientAdapter;

  /// Timeout for requests.
  Duration? connectTimeout;

  /// Timeout for receiving data.
  Duration? receiveTimeout;

  /// Timeout for sending data, like when using stream upload or Tus protocol.
  Duration? sendTimeout;

  /// Base api url
  String baseUrl = '';

  /// Custom HTTP headers to add on every request. Useful for proxies, tracing, etc.
  Map<String, dynamic>? headers;

  /// API key to be used on requests
  String? apiKey;

  /// Callback to asynchronously get API Authorization Bearer token
  TokenCallback? tokenCallback;

  /// Cancel token for cancelling requests
  CancelTokenCallback? cancelTokenCallback;

  /// Additional Dio interceptors appended after auth/header interceptor.
  /// Enables advanced customization like logging, retries, rate-limiting.
  List<Interceptor>? interceptors;

  /// Initialize the Dio client and register interceptors.
  void init({
    String? apiKey,
    String? baseUrl,
    Duration? connectTimeout,
    Duration? receiveTimeout,
    Duration? sendTimeout,
    HttpClientAdapter? httpClientAdapter,
    Map<String, dynamic>? headers,
    TokenCallback? tokenCallback,
    CancelTokenCallback? cancelTokenCallback,
    List<Interceptor>? interceptors,
  }) {
    if ((baseUrl?.isNotEmpty ?? true)) this.baseUrl = baseUrl!;
    if (connectTimeout != null) this.connectTimeout = connectTimeout;
    if (receiveTimeout != null) this.receiveTimeout = receiveTimeout;
    if (sendTimeout != null) this.sendTimeout = sendTimeout;
    if (httpClientAdapter != null) this.httpClientAdapter = httpClientAdapter;
    if (headers != null) this.headers = headers;
    if (apiKey != null) this.apiKey = apiKey;
    if (tokenCallback != null) this.tokenCallback = tokenCallback;
    if (cancelTokenCallback != null)
      this.cancelTokenCallback = cancelTokenCallback;
    if (interceptors != null) this.interceptors = interceptors;
    _initDio();
  }

  String? get authorizationHeader =>
      headers?[authorizationHeaderKey] ?? headers?['Authorization'];

  void _initDio() {
    dispose();

    dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      sendTimeout: sendTimeout,
      // headers: RestAPIService.contentTypeJson,
      contentType: Headers.jsonContentType,
      listFormat: ListFormat.csv,
    )).clone(httpClientAdapter: httpClientAdapter);
    // Base interceptor: add configured headers, API key and Authorization bearer
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
      final tempHeaders = headers ?? <String, dynamic>{};
      if (apiKey != null) {
        tempHeaders[googleApiKeyKey] = apiKey;
      }
      if (tokenCallback != null) {
        String? token = await tokenCallback!();
        if (token != null) {
          tempHeaders[authorizationHeaderKey] = 'Bearer $token';
        }
      }
      options.headers.addAll(tempHeaders);
      return handler.next(options);
    }));

    // Adding custom interceptors (e.g., debug logging, retries, etc.)
    final interceptors = this.interceptors ?? <Interceptor>[];
    dio.interceptors.addAll(interceptors);
  }

  void dispose() {
    try {
      dio.close();
    } catch (e) {
      print(e);
    }
  }
}
