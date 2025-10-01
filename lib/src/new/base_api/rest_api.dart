import 'package:dio/dio.dart';
import 'package:google_maps_apis/src/new/utils/callbacks.dart';

class RestAPI {
  static const googleApiKeyKey = 'x-goog-api-key';
  static const authorizationHeaderKey = 'authorization';

  /// Underlying Dio client used by all new APIs.
  Dio dio = Dio();

  HttpClientAdapter? httpClientAdapter;
  Duration? connectTimeout;
  Duration? receiveTimeout;
  Duration? sendTimeout;
  String apiUrl = '';

  /// Custom HTTP headers to add on every request. Useful for proxies, tracing, etc.
  Map<String, dynamic>? headers;
  String? apiKey;
  TokenCallback? tokenCallback;
  CancelToken? cancelToken;

  /// Additional Dio interceptors appended after auth/header interceptor.
  /// Enables advanced customization like logging, retries, rate-limiting.
  List<Interceptor>? interceptors;

  /// Initialize the Dio client and register interceptors.
  void init({
    String? apiUrl,
    Duration? connectTimeout,
    Duration? receiveTimeout,
    Duration? sendTimeout,
    HttpClientAdapter? httpClientAdapter,
    Map<String, dynamic>? headers,
    String? apiKey,
    TokenCallback? tokenCallback,
    CancelToken? cancelToken,
    List<Interceptor>? interceptors,
  }) {
    if ((apiUrl?.isNotEmpty ?? true)) this.apiUrl = apiUrl!;
    if (connectTimeout != null) this.connectTimeout = connectTimeout;
    if (receiveTimeout != null) this.receiveTimeout = receiveTimeout;
    if (sendTimeout != null) this.sendTimeout = sendTimeout;
    if (httpClientAdapter != null) this.httpClientAdapter = httpClientAdapter;
    if (headers != null) this.headers = headers;
    if (apiKey != null) this.apiKey = apiKey;
    if (tokenCallback != null) this.tokenCallback = tokenCallback;
    if (cancelToken != null) this.cancelToken = cancelToken;
    if (interceptors != null) this.interceptors = interceptors;
    _initDio();
  }

  String? get authorizationHeader =>
      headers?[authorizationHeaderKey] ?? headers?['Authorization'];

  void _initDio() {
    dispose();

    dio = Dio(BaseOptions(
      baseUrl: apiUrl,
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
