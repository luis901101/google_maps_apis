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
    test('Get Place Details with instance fields', () async {
      var response = await placesAPI.getDetails(
        id: placeId ?? '',
        instanceFields: Place(
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
            low: LatLng(
              latitude: 0.0,
            ),
          ),
          regularOpeningHours: OpeningHours(
            periods: [
              Period(
                open: Point(
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
    test('Get Place Details with instance fields and filters', () async {
      var response = await placesAPI.getDetails(
        id: placeId ?? '',
        instanceFields: Place(
          id: '',
          name: '',
          formattedAddress: '',
        ),
        filter: PlaceDetailsFilter(
            languageCode: 'es', regionCode: 'ES', sessionToken: 'ZZZ-ZZZ-ZZZ'),
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body?.id, placeId);
      expect(response.body?.name, isNotNull);
      expect(response.body?.formattedAddress, isNotNull);
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
    test('Build Place Photo url from resource name', () async {
      final name = 'places/$placeId/photos/$photoId';
      final url = placesAPI.buildPhotoUrl(
        name: name,
        maxWidthPx: 3840,
        maxHeightPx: 3840,
      );
      expect(url, isNotNull);
      expect(
          url, startsWith('${placesAPI.restAPI.dio.options.baseUrl}/v1/$name'));
      expect(url, contains('key=$apiKey'));
      expect(url, contains('maxWidthPx=3840'));
      expect(url, contains('maxHeightPx=3840'));
      expect(url, contains('skipHttpRedirect=false'));
    });
    test('Build Place Photo url from placeId and photoId', () async {
      final url = placesAPI.buildPhotoUrl(
        placeId: placeId,
        photoId: photoId,
        maxWidthPx: 3840,
        maxHeightPx: 3840,
      );
      expect(url, isNotNull);
      expect(
          url,
          startsWith(
              '${placesAPI.restAPI.dio.options.baseUrl}/v1/places/$placeId/photos/$photoId'));
      expect(url, contains('key=$apiKey'));
      expect(url, contains('maxWidthPx=3840'));
      expect(url, contains('maxHeightPx=3840'));
      expect(url, contains('skipHttpRedirect=false'));
    });
    test('Get Place plain Photo url from resource name', () async {
      final response = await placesAPI.getPlainPhotoUrl(
        name: 'places/$placeId/photos/$photoId',
        maxWidthPx: 3840,
        maxHeightPx: 3840,
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body,
          startsWith('https://lh3.googleusercontent.com/places/'));
    });
    test('Get Place plain Photo url from placeId and photoId', () async {
      final response = await placesAPI.getPlainPhotoUrl(
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

  group('Nearby Search', () {
    test('Search nearby max 10 restaurants with fields list', () async {
      final int maxResultCount = 10;
      var response = await placesAPI.searchNearby(
        fields: [
          'places.id',
          'places.displayName',
          'places.rating',
        ],
        filter: NearbySearchFilter(
          includedTypes: [PlaceType.restaurant],
          maxResultCount: maxResultCount,
          locationRestriction: LocationCircleArea(
            circle: Circle(
              center: Coordinates(
                latitude: 37.7749,
                longitude: -122.4194,
              ),
              radius: 500,
            ),
          ),
        ),
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body?.places, isNotEmpty);
      expect(response.body?.places.length, lessThanOrEqualTo(maxResultCount));
      final place = response.body?.places.firstOrNull;
      expect(place?.id, isNotNull);
      expect(place?.displayName, isNotNull);
    });
    test('Search nearby including too many types', () async {
      var response = await placesAPI.searchNearby(
        instanceFields: PlacesResponse(
          places: [
            Place(
              id: '',
              displayName: LocalizedText(),
              formattedAddress: '',
              regularOpeningHours: OpeningHours(
                periods: [],
              ),
            ),
          ],
        ),
        filter: NearbySearchFilter(
          includedTypes: PlaceType.foodAndDrinkTypes,
          locationRestriction: LocationCircleArea(
            circle: Circle(
              center: Coordinates(
                latitude: 37.7937,
                longitude: -122.3965,
              ),
              radius: 500.0,
            ),
          ),
        ),
      );
      expect(response.isSuccessful, false);
      expect(response.error, isNotNull);
    });
    test('Search nearby with advanced filter', () async {
      final int maxResultCount = 10;
      var response = await placesAPI.searchNearby(
        instanceFields: PlacesResponse(
          places: [
            Place(
              id: '',
              displayName: LocalizedText(),
              formattedAddress: '',
              regularOpeningHours: OpeningHours(
                periods: [],
              ),
            ),
          ],
        ),
        filter: NearbySearchFilter(
          includedTypes: PlaceType.foodAndDrinkTypes.sublist(0, 50),
          excludedTypes: [PlaceType.sushiRestaurant],
          includedPrimaryTypes: [PlaceType.restaurant],
          excludedPrimaryTypes: [PlaceType.hamburgerRestaurant],
          maxResultCount: maxResultCount,
          rankPreference: RankPreferenceType.distance,
          languageCode: 'es',
          regionCode: 'es',
          locationRestriction: LocationCircleArea(
            circle: Circle(
              center: Coordinates(
                latitude: 37.7937,
                longitude: -122.3965,
              ),
              radius: 500.0,
            ),
          ),
        ),
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body?.places, isNotEmpty);
      expect(response.body?.places.length, lessThanOrEqualTo(maxResultCount));
      final place = response.body?.places.firstOrNull;
      expect(place?.id, isNotNull);
      expect(place?.displayName, isNotNull);
      expect(place?.formattedAddress, isNotNull);
      expect(place?.regularOpeningHours, isNotNull);
      expect(place?.regularOpeningHours?.periods, isNotEmpty);
    });
    test('Search nearby including routingSummaries', () async {
      final int maxResultCount = 10;
      var response = await placesAPI.searchNearby(
        instanceFields: PlacesResponse(
          places: [
            Place(
              id: '',
              displayName: LocalizedText(),
              formattedAddress: '',
              regularOpeningHours: OpeningHours(
                periods: [],
              ),
            ),
          ],
          routingSummaries: [],
        ),
        filter: NearbySearchFilter(
          maxResultCount: maxResultCount,
          routingParameters: RoutingParameters(
            origin: LatLng(
              latitude: 37.7749,
              longitude: -122.4194,
            ),
          ),
          locationRestriction: LocationCircleArea(
            circle: Circle(
              center: Coordinates(
                latitude: 37.7937,
                longitude: -122.3965,
              ),
              radius: 500.0,
            ),
          ),
        ),
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body?.places, isNotEmpty);
      expect(response.body?.places.length, lessThanOrEqualTo(maxResultCount));
      expect(response.body?.routingSummaries?.length,
          equals(response.body?.places.length));
      final place = response.body?.places.firstOrNull;
      expect(place?.id, isNotNull);
      expect(place?.displayName, isNotNull);
      expect(place?.formattedAddress, isNotNull);
      expect(place?.regularOpeningHours, isNotNull);
      expect(place?.regularOpeningHours?.periods, isNotEmpty);
      final routingSummary = response.body?.routingSummaries?.firstOrNull;
      expect(routingSummary?.directionsUri, isNotNull);
      expect(routingSummary?.legs, isNotEmpty);
      final leg = routingSummary?.legs?.firstOrNull;
      expect(leg?.distanceMeters, isNotNull);
      expect(leg?.duration, isNotNull);
    });
  });

  group('Text Search', () {
    test('Simple search by text with max 10 places and fields list', () async {
      final int pageSize = 10;
      var response = await placesAPI.searchText(
        fields: [
          'places.id',
          'places.displayName',
          'places.rating',
        ],
        filter: TextSearchFilter(
          textQuery: 'Spicy Vegetarian Food in Sydney, Australia',
          pageSize: pageSize,
        ),
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body?.places, isNotEmpty);
      expect(response.body?.places.length, lessThanOrEqualTo(pageSize));
      final place = response.body?.places.firstOrNull;
      expect(place?.id, isNotNull);
      expect(place?.displayName, isNotNull);
      expect(place?.rating, isNotNull);
    });
    test('Search by text with max 10 places and instance fields', () async {
      final int pageSize = 10;
      var response = await placesAPI.searchText(
        instanceFields: PlacesResponse(
          places: [
            Place(
              id: '',
              displayName: LocalizedText(),
              formattedAddress: '',
              rating: 0.0,
              regularOpeningHours: OpeningHours(
                periods: [],
              ),
            ),
          ],
        ),
        filter: TextSearchFilter(
          textQuery: 'Spicy Vegetarian Food in Sydney, Australia',
          pageSize: pageSize,
        ),
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body?.places, isNotEmpty);
      expect(response.body?.places.length, lessThanOrEqualTo(pageSize));
      final place = response.body?.places.firstOrNull;
      expect(place?.id, isNotNull);
      expect(place?.displayName, isNotNull);
      expect(place?.formattedAddress, isNotNull);
      expect(place?.rating, isNotNull);
      expect(place?.regularOpeningHours, isNotNull);
      expect(place?.regularOpeningHours?.periods, isNotEmpty);
    });
    test('Search by text with price levels filter and instance fields',
        () async {
      final int pageSize = 10;
      final priceLevels = [PriceLevel.inexpensive, PriceLevel.moderate];
      var response = await placesAPI.searchText(
        instanceFields: PlacesResponse(
          places: [
            Place(
              id: '',
              displayName: LocalizedText(),
              formattedAddress: '',
              rating: 0.0,
              priceLevel: PriceLevel.inexpensive,
              regularOpeningHours: OpeningHours(
                periods: [],
              ),
            ),
          ],
        ),
        filter: TextSearchFilter(
          textQuery: 'Spicy Vegetarian Food in Sydney, Australia',
          pageSize: pageSize,
          priceLevels: priceLevels,
        ),
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body?.places, isNotEmpty);
      expect(response.body?.places.length, lessThanOrEqualTo(pageSize));
      final place = response.body?.places.firstOrNull;
      expect(place?.id, isNotNull);
      expect(place?.displayName, isNotNull);
      expect(place?.priceLevel, isIn(priceLevels));
    });
    test('Search by text with pagination and instance fields', () async {
      print('Google will return up to 3 pages with 20 results each.');
      final int pageSize = 20;
      int page = 0;
      String? nextPageToken;

      /// Necessary delay between paginated requests: Check here: https://web.archive.org/web/20200821074639if_/https://developers.google.com/places/web-service/search#PlaceSearchPaging
      const nextPageTokenDelay = Duration(seconds: 1);

      do {
        ++page;
        var response = await placesAPI.searchText(
          instanceFields: PlacesResponse(
            places: [
              Place(
                id: '',
                displayName: LocalizedText(),
              ),
            ],
            nextPageToken: '',
          ),
          filter: TextSearchFilter(
            textQuery: 'pizza in New York',
            pageSize: pageSize,
            pageToken: nextPageToken,
          ),
        );
        expect(response.isSuccessful, true);
        expect(response.body, isNotNull);
        expect(response.body?.places, isNotEmpty);
        expect(response.body?.places.length, lessThanOrEqualTo(pageSize));
        nextPageToken = response.body?.nextPageToken;
        print(
            'Page: $page\nPlaces: ${response.body?.places.length}\nNext Page Token: $nextPageToken\n=============================');
        await Future.delayed(nextPageTokenDelay);
      } while (page <= 4 && nextPageToken != null);
    });
  });
}
