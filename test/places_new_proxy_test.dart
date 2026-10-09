import 'package:dio/dio.dart';
import 'package:google_maps_apis/places_new.dart';
import 'package:test/test.dart';

/// Offline tests for using [PlacesAPINew] through a proxy whose base url has a
/// path prefix, e.g. `https://proxy.example.com/gmaps`.
void main() {
  group('Photo url with a proxy base url', () {
    const placeId = 'PLACE_ID';
    const photoId = 'PHOTO_ID';
    const mediaPath = '/v1/places/$placeId/photos/$photoId/media';

    test('keeps the base url path prefix', () {
      final api = PlacesAPINew(
        apiKey: 'proxy-client-key',
        baseUrl: 'https://proxy.example.com/gmaps',
      );
      addTearDown(api.dispose);

      final uri = Uri.parse(
        api.buildPhotoUrl(placeId: placeId, photoId: photoId, maxWidthPx: 400),
      );

      expect(uri.scheme, 'https');
      expect(uri.host, 'proxy.example.com');
      expect(uri.path, '/gmaps$mediaPath');
      expect(uri.queryParameters['key'], 'proxy-client-key');
      expect(uri.queryParameters['maxWidthPx'], '400');
      expect(uri.queryParameters['skipHttpRedirect'], 'false');
    });

    test('ignores a trailing slash in the base url', () {
      final api = PlacesAPINew(
        apiKey: 'proxy-client-key',
        baseUrl: 'https://proxy.example.com/gmaps/',
      );
      addTearDown(api.dispose);

      final uri = Uri.parse(
        api.buildPhotoUrl(
          name: 'places/$placeId/photos/$photoId',
          maxHeightPx: 300,
        ),
      );

      expect(uri.path, '/gmaps$mediaPath');
      expect(uri.queryParameters['maxHeightPx'], '300');
    });

    test('uses the default base url when none is given', () {
      final api = PlacesAPINew(apiKey: 'google-key');
      addTearDown(api.dispose);

      final url = api.buildPhotoUrl(
        placeId: placeId,
        photoId: photoId,
        maxWidthPx: 400,
      );

      expect(url, startsWith('https://places.googleapis.com$mediaPath?'));
      expect(Uri.parse(url).queryParameters['key'], 'google-key');
    });

    test('omits key when the api uses a token instead of an api key', () {
      final api = PlacesAPINew(
        token: 'oauth-token',
        baseUrl: 'https://proxy.example.com/gmaps',
      );
      addTearDown(api.dispose);

      final uri = Uri.parse(
        api.buildPhotoUrl(placeId: placeId, photoId: photoId, maxWidthPx: 400),
      );

      expect(uri.path, '/gmaps$mediaPath');
      expect(uri.queryParameters.containsKey('key'), isFalse);
      expect(uri.toString(), isNot(contains('key')));
    });

    test('an explicit apiKey is used in token mode', () {
      final api = PlacesAPINew(
        token: 'oauth-token',
        baseUrl: 'https://proxy.example.com/gmaps',
      );
      addTearDown(api.dispose);

      final uri = Uri.parse(
        api.buildPhotoUrl(
          apiKey: 'explicit-key',
          placeId: placeId,
          photoId: photoId,
          maxWidthPx: 400,
        ),
      );

      expect(uri.queryParameters['key'], 'explicit-key');
    });
  });

  group('Requests with a proxy base url', () {
    /// Builds a [PlacesAPINew] whose requests never leave the process: the
    /// interceptor records each request and answers it with [responseData].
    PlacesAPINew buildApi({
      required String baseUrl,
      required List<RequestOptions> captured,
      required Object responseData,
    }) {
      return PlacesAPINew(
        apiKey: 'proxy-client-key',
        baseUrl: baseUrl,
        interceptors: [
          InterceptorsWrapper(
            onRequest: (options, handler) {
              captured.add(options);
              handler.resolve(
                Response(
                  requestOptions: options,
                  statusCode: 200,
                  data: responseData,
                ),
              );
            },
          ),
        ],
      );
    }

    for (final baseUrl in [
      'https://proxy.example.com/gmaps',
      'https://proxy.example.com/gmaps/',
    ]) {
      test('searchText goes to the prefixed path ($baseUrl)', () async {
        final captured = <RequestOptions>[];
        final api = buildApi(
          baseUrl: baseUrl,
          captured: captured,
          responseData: <String, dynamic>{'places': <dynamic>[]},
        );
        addTearDown(api.dispose);

        final response = await api.searchText(
          fields: ['places.id', 'places.displayName'],
          filter: TextSearchFilter(textQuery: 'pizza'),
        );

        expect(response.isSuccessful, isTrue);
        expect(captured, hasLength(1));
        final request = captured.single;
        expect(request.method, 'POST');
        expect(request.uri.host, 'proxy.example.com');
        expect(request.uri.path, '/gmaps/v1/places:searchText');
        expect(
          request.uri.queryParameters['fields'],
          'places.id,places.displayName',
        );
        expect(request.headers[RestAPI.googleApiKeyKey], 'proxy-client-key');
        expect(request.uri.queryParameters.containsKey('key'), isFalse);
      });
    }

    test('getDetails goes to the prefixed path', () async {
      final captured = <RequestOptions>[];
      final api = buildApi(
        baseUrl: 'https://proxy.example.com/gmaps',
        captured: captured,
        responseData: <String, dynamic>{'id': 'PLACE_ID'},
      );
      addTearDown(api.dispose);

      final response = await api.getDetails(id: 'PLACE_ID', fields: ['id']);

      expect(response.isSuccessful, isTrue);
      final request = captured.single;
      expect(request.method, 'GET');
      expect(request.uri.path, '/gmaps/v1/places/PLACE_ID');
      expect(request.uri.queryParameters['fields'], 'id');
      expect(request.headers[RestAPI.googleApiKeyKey], 'proxy-client-key');
    });
  });
}
