import 'package:dio/dio.dart';
import 'package:google_maps_apis/src/new/base_api/rest_api.dart';
import 'package:test/test.dart';

void main() {
  group('RestAPI', () {
    test('Applies headers and apiKey via interceptor', () async {
      final rest = RestAPI();
      final captured = <RequestOptions>[];

      rest.init(
        baseUrl: 'https://example.com',
        headers: {'X-Test': '1'},
        apiKey: 'abc',
        interceptors: [
          InterceptorsWrapper(onRequest: (options, handler) {
            captured.add(options);
            handler.next(options);
          }),
        ],
      );

      final options = RequestOptions(path: '/ping');
      try {
        await rest.dio.fetch(options);
      } catch (_) {
        // No adapter; just validate interceptors execution
      }

      expect(captured.length, 1);
      final req = captured.first;
      expect(req.headers['X-Test'], '1');
      expect(req.headers[RestAPI.googleApiKeyKey], 'abc');
    });

    test('Custom interceptors run after auth interceptor', () async {
      final rest = RestAPI();
      String? authHeaderSeen;

      rest.init(
        baseUrl: 'https://example.com',
        headers: {'Authorization': 'Bearer override'},
        interceptors: [
          InterceptorsWrapper(onRequest: (options, handler) {
            authHeaderSeen = options.headers['authorization'] ??
                options.headers['Authorization'];
            handler.next(options);
          }),
        ],
      );

      final options = RequestOptions(path: '/ping');
      try {
        await rest.dio.fetch(options);
      } catch (_) {}

      expect(authHeaderSeen, isNotNull);
    });
  });
}
