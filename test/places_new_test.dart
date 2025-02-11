import 'dart:async';
import 'dart:io';

import 'package:google_maps_apis/places_new.dart';
import 'package:test/test.dart';

Future<void> main() async {
  final apiKey = Platform.environment['GOOGLE_API_KEY'];
  var placesAPI = PlacesAPINew(apiKey: apiKey);
  await placesAPI.init();

  tearDownAll(() {
    placesAPI.dispose();
  });

  group('Get Place Details by ID', () {
    final placeId = Platform.environment['GOOGLE_PLACE_ID'];
    test('Get Place Details with all fields', () async {
      var response = await placesAPI.getDetails(
        id: placeId ?? '',
        allFields: true,
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body?.id, placeId);
      expect(response.body?.name, isNotNull);
      expect(response.body?.location, isNotNull);
    });
    test('Get Place Details with specific fields list', () async {
      var response = await placesAPI.getDetails(
        id: placeId ?? '',
        fields: [
          'name',
          'id',
          'types',
          'formattedAddress',
          'addressComponents.longText',
          'viewport.low.latitude',
          'rating',
          'regularOpeningHours.periods.open.day',
        ],
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body?.id, placeId);
      expect(response.body?.name, isNotNull);
      expect(response.body?.types, isNotNull);
      expect(response.body?.formattedAddress, isNotNull);
      expect(response.body?.addressComponents, isNotEmpty);
      expect(response.body?.addressComponents?.firstOrNull, isNotNull);
      expect(response.body?.rating, isNotNull);
      expect(response.body?.viewport, isNotNull);
      expect(response.body?.viewport?.low, isNotNull);
      expect(response.body?.viewport?.low?.latitude, isNotNull);
      expect(response.body?.regularOpeningHours, isNotNull);
      expect(response.body?.regularOpeningHours?.periods, isNotEmpty);
      expect(response.body?.regularOpeningHours?.periods?.firstOrNull?.open,
          isNotNull);
      expect(
          response.body?.regularOpeningHours?.periods?.firstOrNull?.open?.day,
          isNotNull);
    });
    test('Get Place Details with placeFields instance', () async {
      var response = await placesAPI.getDetails(
        id: placeId ?? '',
        placeFields: PlaceDetails(
          id: '',
          name: '',
          types: [],
          formattedAddress: '',
          addressComponents: [
            AddressComponent(
              longText: '',
            ),
          ],
          rating: 0.0,
          viewport: Viewport(
            low: Low(
              latitude: 0.0,
            ),
          ),
          regularOpeningHours: RegularOpeningHours(
            periods: [
              Period(
                open: Open(
                  day: 0,
                ),
              ),
            ],
          ),
        ),
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body?.id, placeId);
      expect(response.body?.name, isNotNull);
      expect(response.body?.types, isNotNull);
      expect(response.body?.formattedAddress, isNotNull);
      expect(response.body?.addressComponents, isNotEmpty);
      expect(response.body?.addressComponents?.firstOrNull, isNotNull);
      expect(response.body?.rating, isNotNull);
      expect(response.body?.viewport, isNotNull);
      expect(response.body?.viewport?.low, isNotNull);
      expect(response.body?.viewport?.low?.latitude, isNotNull);
      expect(response.body?.regularOpeningHours, isNotNull);
      expect(response.body?.regularOpeningHours?.periods, isNotEmpty);
      expect(response.body?.regularOpeningHours?.periods?.firstOrNull?.open,
          isNotNull);
      expect(
          response.body?.regularOpeningHours?.periods?.firstOrNull?.open?.day,
          isNotNull);
    });
    test('Get Place Details without fields', () async {
      var response = await placesAPI.getDetails(
        id: placeId ?? '',
        fields: [],
      );
      expect(response.isSuccessful, false);
      expect(response.error, isNotNull);
      expect(response.error?.error?.code, 400);
      expect(response.error?.error?.status, 'INVALID_ARGUMENT');
    });
    test('Get Place Details with invalid fields', () async {
      var response = await placesAPI.getDetails(
        id: placeId ?? '',
        fields: ['test'],
      );
      expect(response.isSuccessful, false);
      expect(response.error, isNotNull);
      expect(response.error?.error?.code, 400);
      expect(response.error?.error?.status, 'INVALID_ARGUMENT');
      expect(response.error?.error?.details, isNotNull);
    });
  });

  group('Get Place Photo', () {
    final placeId = Platform.environment['GOOGLE_PLACE_ID'];
    final photoId = Platform.environment['GOOGLE_PLACE_PHOTO_ID'];
    test('Get Place Photo url from resource name', () async {
      final response = await placesAPI.getPhotoUrl(
        name: 'places/$placeId/photos/$photoId',
        maxWidthPx: 3840,
        maxHeightPx: 3840,
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body,
          startsWith('https://lh3.googleusercontent.com/places/'));
    });
    test('Get Place Photo url from placeId and photoId', () async {
      final response = await placesAPI.getPhotoUrl(
        placeId: placeId,
        photoId: photoId,
        maxWidthPx: 3840,
        maxHeightPx: 3840,
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body,
          startsWith('https://lh3.googleusercontent.com/places/'));
    });
    test('Get Place Photo binary from resource name', () async {
      final response = await placesAPI.getPhotoBinary(
        name: 'places/$placeId/photos/$photoId',
        maxWidthPx: 3840,
        maxHeightPx: 3840,
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body, isNotEmpty);
    });
    test('Get Place Photo binary from placeId and photoId', () async {
      final response = await placesAPI.getPhotoBinary(
        placeId: placeId,
        photoId: photoId,
        maxWidthPx: 3840,
        maxHeightPx: 3840,
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body, isNotEmpty);
    });
  });
}
