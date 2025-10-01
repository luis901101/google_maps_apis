import 'package:dio/dio.dart';

/// Utility class providing common interceptors for Google Maps APIs
class GoogleMapsInterceptors {
  /// Creates a debug interceptor that logs all requests and responses
  ///
  /// This interceptor will log:
  /// - Request method and URL
  /// - Request headers
  /// - Request body (if present)
  /// - Query parameters (if present)
  /// - Response status code and headers
  /// - Response body (if present)
  static Interceptor debugInterceptor({
    bool logRequest = true,
    bool logResponse = true,
    bool logHeaders = true,
    bool logBody = true,
    String prefix = '[Google Maps API]',
  }) {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        if (logRequest) {
          print('🌐 $prefix ${options.method} ${options.uri}');
          if (logHeaders) {
            print('📋 $prefix Headers: ${options.headers}');
          }
          if (logBody && options.data != null) {
            print('📦 $prefix Body: ${options.data}');
          }
          if (options.queryParameters.isNotEmpty) {
            print('🔍 $prefix Query Params: ${options.queryParameters}');
          }
        }
        handler.next(options);
      },
      onResponse: (response, handler) {
        if (logResponse) {
          print(
            '✅ $prefix ${response.statusCode} ${response.requestOptions.uri}',
          );
          if (logHeaders) {
            print('📋 $prefix Response Headers: ${response.headers}');
          }
          if (logBody && response.data != null) {
            print('📦 $prefix Response Body: ${response.data}');
          }
        }
        handler.next(response);
      },
      onError: (error, handler) {
        print(
          '❌ $prefix Error ${error.response?.statusCode} ${error.requestOptions.uri}',
        );
        if (error.response?.data != null) {
          print('📦 $prefix Error Body: ${error.response?.data}');
        }
        handler.next(error);
      },
    );
  }

  /// Creates a retry interceptor that retries failed requests
  ///
  /// [maxRetries] - Maximum number of retry attempts
  /// [retryDelay] - Delay between retries
  /// [retryOnError] - Function to determine if an error should trigger a retry
  static Interceptor retryInterceptor({
    int maxRetries = 3,
    Duration retryDelay = const Duration(seconds: 1),
    bool Function(DioException)? retryOnError,
  }) {
    return InterceptorsWrapper(
      onError: (error, handler) async {
        if (error.requestOptions.extra['retryCount'] == null) {
          error.requestOptions.extra['retryCount'] = 0;
        }

        final retryCount = error.requestOptions.extra['retryCount'] as int;

        if (retryCount < maxRetries) {
          final shouldRetry =
              retryOnError?.call(error) ??
              (error.type == DioExceptionType.connectionTimeout ||
                  error.type == DioExceptionType.receiveTimeout ||
                  error.type == DioExceptionType.sendTimeout ||
                  (error.response?.statusCode != null &&
                      error.response!.statusCode! >= 500));

          if (shouldRetry) {
            error.requestOptions.extra['retryCount'] = retryCount + 1;
            print(
              '🔄 [Google Maps API] Retrying request (${retryCount + 1}/$maxRetries)',
            );

            await Future.delayed(retryDelay);
            try {
              final response = await Dio().fetch(error.requestOptions);
              handler.resolve(response);
              return;
            } catch (e) {
              // Continue to next retry or fail
            }
          }
        }

        handler.next(error);
      },
    );
  }

  /// Creates a timing interceptor that logs request duration
  static Interceptor timingInterceptor({
    String prefix = '[Google Maps API]',
    Duration? slowRequestThreshold,
  }) {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        options.extra['startTime'] = DateTime.now().millisecondsSinceEpoch;
        handler.next(options);
      },
      onResponse: (response, handler) {
        final startTime = response.requestOptions.extra['startTime'] as int?;
        if (startTime != null) {
          final duration = DateTime.now().millisecondsSinceEpoch - startTime;
          final durationMs = Duration(milliseconds: duration);

          if (slowRequestThreshold == null ||
              durationMs > slowRequestThreshold) {
            print('⏱️ $prefix Request took ${durationMs.inMilliseconds}ms');
          }
        }
        handler.next(response);
      },
      onError: (error, handler) {
        final startTime = error.requestOptions.extra['startTime'] as int?;
        if (startTime != null) {
          final duration = DateTime.now().millisecondsSinceEpoch - startTime;
          final durationMs = Duration(milliseconds: duration);
          print(
            '⏱️ $prefix Failed request took ${durationMs.inMilliseconds}ms',
          );
        }
        handler.next(error);
      },
    );
  }

  /// Creates a rate limiting interceptor
  ///
  /// [maxRequestsPerSecond] - Maximum requests per second
  static Interceptor rateLimitInterceptor({int maxRequestsPerSecond = 10}) {
    final requests = <DateTime>[];

    return InterceptorsWrapper(
      onRequest: (options, handler) async {
        final now = DateTime.now();

        // Remove requests older than 1 second
        requests.removeWhere((time) => now.difference(time).inSeconds >= 1);

        if (requests.length >= maxRequestsPerSecond) {
          final oldestRequest = requests.first;
          final waitTime = Duration(seconds: 1) - now.difference(oldestRequest);
          if (waitTime.inMilliseconds > 0) {
            print(
              '⏳ [Google Maps API] Rate limiting: waiting ${waitTime.inMilliseconds}ms',
            );
            await Future.delayed(waitTime);
          }
        }

        requests.add(now);
        handler.next(options);
      },
    );
  }

  /// Creates a custom header interceptor that adds headers to all requests
  static Interceptor customHeadersInterceptor(Map<String, String> headers) {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        options.headers.addAll(headers);
        handler.next(options);
      },
    );
  }

  /// Creates a response transformation interceptor
  ///
  /// [transformResponse] - Function to transform response data
  static Interceptor responseTransformInterceptor<T>(
    T Function(dynamic data) transformResponse,
  ) {
    return InterceptorsWrapper(
      onResponse: (response, handler) {
        try {
          final transformedData = transformResponse(response.data);
          response.data = transformedData;
        } catch (e) {
          print('⚠️ [Google Maps API] Response transformation failed: $e');
        }
        handler.next(response);
      },
    );
  }
}
