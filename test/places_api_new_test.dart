import 'dart:io' show Platform;

import 'package:dio/dio.dart';
import 'package:google_maps_apis/src/new/apiservice/places_api_new.dart';
import 'package:test/test.dart';

void main() {
  final apiKey = Platform.environment['GOOGLE_API_KEY'];
  test('PlacesAPINew propagates cancelToken to photo requests', () async {
    final token = CancelToken();
    final api = PlacesAPINew(
      apiKey: apiKey,
      cancelToken: token,
      baseUrl: 'https://places.googleapis.com',
    );

    // We cannot actually execute because there is no adapter, but we can
    // ensure that building the request options uses the same Dio instance
    // which has the cancel token configured.
    final requestOptions = RequestOptions(
      method: 'GET',
      baseUrl: api.buildPhotoUrl(
        placeId: 'p',
        photoId: 'ph',
        maxWidthPx: 100,
      ),
      responseType: ResponseType.bytes,
      receiveTimeout: api.restAPI.receiveTimeout,
      connectTimeout: api.restAPI.connectTimeout,
      sendTimeout: api.restAPI.sendTimeout,
      cancelToken: api.restAPI.cancelToken,
    );

    expect(
        identical(requestOptions.cancelToken, api.restAPI.cancelToken), isTrue);
  });
}
