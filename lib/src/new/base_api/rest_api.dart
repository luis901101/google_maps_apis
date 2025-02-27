import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:google_maps_apis/src/new/utils/callbacks.dart';

class RestAPI {
  static const googleApiKeyKey = 'X-Goog-Api-Key';

  Dio dio = Dio();

  HttpClient? httpClient;

  Duration? connectTimeout;
  Duration? receiveTimeout;
  Duration? sendTimeout;
  String apiUrl = '';
  Map<String, dynamic>? headers;
  String? apiKey;
  TokenCallback? tokenCallback;

  void init(
      {String? apiUrl,
      Duration? connectTimeout,
      Duration? receiveTimeout,
      Duration? sendTimeout,
      HttpClient? httpClient,
      Map<String, dynamic>? headers,
      String? apiKey,
      TokenCallback? tokenCallback,
      }) {
    if ((apiUrl?.isNotEmpty ?? true)) this.apiUrl = apiUrl!;
    if (connectTimeout != null) this.connectTimeout = connectTimeout;
    if (receiveTimeout != null) this.receiveTimeout = receiveTimeout;
    if (sendTimeout != null) this.sendTimeout = sendTimeout;
    if (httpClient != null) this.httpClient = httpClient;
    if (headers != null) this.headers = headers;
    if (apiKey != null) this.apiKey = apiKey;
    if (tokenCallback != null) this.tokenCallback = tokenCallback;
    _initDio();
  }

  String? get authorizationHeader => headers?[HttpHeaders.authorizationHeader];

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
    ));

    // Adding auth token to each request
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
          final tempHeaders = headers ?? <String, dynamic>{};
      if(apiKey != null) {
        tempHeaders[googleApiKeyKey] = apiKey;
      }
      if(tokenCallback != null) {
        String? token = await tokenCallback!();
        if(token != null) {
          tempHeaders[HttpHeaders.authorizationHeader] = 'Bearer $token';
        }
      }
      options.headers.addAll(tempHeaders);
      return handler.next(options);
    }));

    // Adding custom httpClient
    if (httpClient != null) {
      (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient =
          () => httpClient!;
    }
  }

  void dispose() {
    try {
      dio.close();
    } catch (e) {
      print(e);
    }
  }
}
