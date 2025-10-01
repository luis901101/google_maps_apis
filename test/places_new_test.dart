import 'dart:async';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:google_maps_apis/places_new.dart';
import 'package:test/test.dart';

Future<void> main() async {
  final apiKey = Platform.environment['GOOGLE_API_KEY'];
  var placesAPI = PlacesAPINew(apiKey: apiKey);

  tearDownAll(() {
    placesAPI.dispose();
  });

  group('Json parsing tests', () {
    test('BusinessStatus enum parsing', () {
      final data = Place(
        businessStatus: BusinessStatus.closedTemporarily,
      );
      final jsonMap = data.toJson();
      expect(jsonMap['businessStatus'], contains('CLOSED_TEMPORARILY'));

      final json = data.toJsonString();
      expect(json, contains('businessStatus'));
      expect(json, contains('CLOSED_TEMPORARILY'));
    });
    test('Containment enum parsing', () {
      final value = Area(
        containment: Containment.containmentUnspecified,
      );
      final jsonMap = value.toJson();
      expect(jsonMap['containment'], contains('CONTAINMENT_UNSPECIFIED'));

      final json = value.toJsonString();
      expect(json, contains('containment'));
      expect(json, contains('CONTAINMENT_UNSPECIFIED'));
    });
    test('FuelType enum parsing', () {
      final value = FuelPrice(
        type: FuelType.regularUnleaded,
      );
      final jsonMap = value.toJson();
      expect(jsonMap['type'], contains('REGULAR_UNLEADED'));

      final json = value.toJsonString();
      expect(json, contains('type'));
      expect(json, contains('REGULAR_UNLEADED'));
    });
    test('PlaceType enum parsing', () {
      final data = Place(
        types: [
          PlaceType.administrativeAreaLevel1,
          PlaceType.sublocalityLevel2,
        ],
      );
      final jsonMap = data.toJson();
      expect(jsonMap['types'], contains('administrative_area_level_1'));
      expect(jsonMap['types'], contains('sublocality_level_2'));

      final json = data.toJsonString();
      expect(json, contains('types'));
      expect(json, contains('administrative_area_level_1'));
      expect(json, contains('sublocality_level_2'));
    });
    test('RankPreferenceType enum parsing', () {
      final data = TextSearchFilter(
          rankPreference: RankPreferenceType.distance, textQuery: '');
      final jsonMap = data.toJson();
      expect(jsonMap['rankPreference'], contains('DISTANCE'));

      final json = data.toJsonString();
      expect(json, contains('rankPreference'));
      expect(json, contains('DISTANCE'));
    });
    test('RoutingPreference enum parsing', () {
      final data = RoutingParameters(
        routingPreference: RoutingPreference.routingPreferenceUnspecified,
      );
      final jsonMap = data.toJson();
      expect(jsonMap['routingPreference'],
          contains('ROUTING_PREFERENCE_UNSPECIFIED'));

      final json = data.toJsonString();
      expect(json, contains('routingPreference'));
      expect(json, contains('ROUTING_PREFERENCE_UNSPECIFIED'));
    });
    test('SecondaryHoursType enum parsing', () {
      final data = OpeningHours(
        secondaryHoursType: SecondaryHoursType.driveThrough,
      );
      final jsonMap = data.toJson();
      expect(jsonMap['secondaryHoursType'], contains('DRIVE_THROUGH'));

      final json = data.toJsonString();
      expect(json, contains('secondaryHoursType'));
      expect(json, contains('DRIVE_THROUGH'));
    });
    test('SpatialRelationship enum parsing', () {
      final data = Landmark(
        spatialRelationship: SpatialRelationship.acrossTheRoad,
      );
      final jsonMap = data.toJson();
      expect(jsonMap['spatialRelationship'], contains('ACROSS_THE_ROAD'));

      final json = data.toJsonString();
      expect(json, contains('spatialRelationship'));
      expect(json, contains('ACROSS_THE_ROAD'));
    });
    test('TravelMode enum parsing', () {
      final data = RoutingParameters(
        travelMode: TravelMode.travelModeUnspecified,
      );
      final jsonMap = data.toJson();
      expect(jsonMap['travelMode'], contains('TRAVEL_MODE_UNSPECIFIED'));

      final json = data.toJsonString();
      expect(json, contains('travelMode'));
      expect(json, contains('TRAVEL_MODE_UNSPECIFIED'));
    });
  });

  group('Using Custom HttpClientAdapter', () {
    test('Get Place Details with some fields using custom httpClientAdapter',
        () async {
      final placeId = Platform.environment['GOOGLE_PLACE_ID'];
      final tempPlacesAPI = PlacesAPINew(
          apiKey: apiKey, httpClientAdapter: IOHttpClientAdapter());
      final response = await tempPlacesAPI.getDetails(
          id: placeId ?? '',
          instanceFields: Place(
            name: '',
            displayName: LocalizedText(),
          ));
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body?.name, isNotNull);
      expect(response.body?.displayName, isNotNull);
    });
    test(
        'Get Place Details with some fields using custom httpClientAdapter with badCertificate validation',
        () async {
      final placeId = Platform.environment['GOOGLE_PLACE_ID'];
      final tempPlacesAPI = PlacesAPINew(
        apiKey: apiKey,
        httpClientAdapter: IOHttpClientAdapter()
          ..validateCertificate = (cert, host, port) {
            return false;
          },
      );
      final response = await tempPlacesAPI.getDetails(
          id: placeId ?? '',
          instanceFields: Place(
            name: '',
            displayName: LocalizedText(),
          ));
      expect(response.isSuccessful, false);
      expect(response.extraData is DioException, isTrue);
      expect((response.extraData as DioException).type,
          DioExceptionType.badCertificate);
    });
  });

  group('Cancel requests using cancel token ', () {
    final placeId = Platform.environment['GOOGLE_PLACE_ID'];
    test('Get Place Details and cancel request with cancel token param',
        () async {
      final cancelToken = CancelToken();
      final request = placesAPI.getDetails(
          id: placeId ?? '', allFields: true, cancelToken: cancelToken);

      final cancellationReason = 'Cancelled by user using cancel token param';
      cancelToken.cancel(cancellationReason);
      final response = await request;

      expect(response.isSuccessful, false);
      expect(response.extraData is DioException, true);
      print(
          'Cancellation reason from response: ${(response.extraData as DioException).error}');
      expect((response.extraData as DioException).error, cancellationReason);
    });

    test('Get Place Details and cancel request with default api cancel token',
        () async {
      final cancellationReason =
          'Cancelled by user using cancel token from api';
      final cancelToken = CancelToken();
      placesAPI.restAPI.cancelTokenCallback = () => cancelToken;
      cancelToken.cancel(cancellationReason);
      final response = await placesAPI.getDetails(
        id: placeId ?? '',
        allFields: true,
      );
      placesAPI.restAPI.cancelTokenCallback =
          null; // Reset cancel token callback for future requests

      expect(response.isSuccessful, false);
      expect(response.extraData is DioException, true);
      print(
          'Cancellation reason from response: ${(response.extraData as DioException).error}');
      expect((response.extraData as DioException).error, cancellationReason);
    });
  });

  group('Get Place Details by ID', () {
    final placeId = Platform.environment['GOOGLE_PLACE_ID'];
    test('Get Place Details with all fields', () async {
      final response = await placesAPI.getDetails(
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
      final response = await placesAPI.getDetails(
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
      final response = await placesAPI.getDetails(
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
      final response = await placesAPI.getDetails(
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
      final response = await placesAPI.getDetails(
        id: placeId ?? '',
        fields: [],
      );
      expect(response.isSuccessful, false);
      expect(response.error, isNotNull);
      expect(response.error?.error?.code, 400);
      expect(response.error?.error?.status, 'INVALID_ARGUMENT');
    });
    test('Get Place Details with invalid fields', () async {
      final response = await placesAPI.getDetails(
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
          startsWith('https://lh3.googleusercontent.com/place-photos/'));
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
          startsWith('https://lh3.googleusercontent.com/place-photos/'));
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
      final response = await placesAPI.searchNearby(
        fields: [
          'places.id',
          'places.displayName',
          'places.rating',
        ],
        filter: NearbySearchFilter(
          includedTypes: [PlaceType.restaurant],
          maxResultCount: maxResultCount,
          locationRestriction: LocationRestrictionCircle(
            circle: Circle(
              center: ReferencePoint(
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
      final response = await placesAPI.searchNearby(
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
          locationRestriction: LocationRestrictionCircle(
            circle: Circle(
              center: ReferencePoint(
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
      final response = await placesAPI.searchNearby(
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
          locationRestriction: LocationRestrictionCircle(
            circle: Circle(
              center: ReferencePoint(
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
      final response = await placesAPI.searchNearby(
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
          locationRestriction: LocationRestrictionCircle(
            circle: Circle(
              center: ReferencePoint(
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
      final response = await placesAPI.searchText(
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
      final response = await placesAPI.searchText(
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
      final response = await placesAPI.searchText(
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
        final response = await placesAPI.searchText(
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

  group('Autocomplete Search', () {
    test(
        'Search within a circular area with locationRestriction and fields list',
        () async {
      final response = await placesAPI.searchAutocomplete(
        fields: [
          'suggestions.placePrediction.placeId',
          'suggestions.placePrediction.text',
          'suggestions.placePrediction.structuredFormat.mainText.text',
        ],
        filter: AutocompleteSearchFilter(
          input: 'Art museum',
          locationRestriction: LocationRestriction(
            circle: Circle(
              center: ReferencePoint(
                latitude: 37.7749,
                longitude: -122.4194,
              ),
              radius: 5000,
            ),
          ),
        ),
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body?.suggestions, isNotEmpty);
      final placePrediction =
          response.body?.suggestions.firstOrNull?.placePrediction;
      expect(placePrediction?.placeId, isNotNull);
      expect(placePrediction?.text, isNotNull);
      expect(placePrediction?.structuredFormat?.mainText?.text, isNotNull);
    });
    test(
        'Search within a rectangular area with locationBias and fields instance',
        () async {
      final response = await placesAPI.searchAutocomplete(
        instanceFields: PlacesSuggestions(
          suggestions: [
            Suggestion(
              placePrediction: PlacePrediction(
                placeId: '',
                text: FormattableText(),
                structuredFormat: StructuredFormat(
                  mainText: FormattableText(
                    text: '',
                  ),
                ),
              ),
            ),
          ],
        ),
        filter: AutocompleteSearchFilter(
          input: 'Art museum',
          locationBias: LocationBias(
            rectangle: Rectangle(
              low: ReferencePoint(
                latitude: 37.7751,
                longitude: -122.4219,
              ),
              high: ReferencePoint(
                latitude: 37.7955,
                longitude: -122.3937,
              ),
            ),
          ),
        ),
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body?.suggestions, isNotEmpty);
      final placePrediction =
          response.body?.suggestions.firstOrNull?.placePrediction;
      expect(placePrediction?.placeId, isNotNull);
      expect(placePrediction?.text, isNotNull);
      expect(placePrediction?.structuredFormat?.mainText?.text, isNotNull);
    });
    test(
        'Search within a circular area with locationBias, specifying primary types and no fields selection',
        () async {
      final response = await placesAPI.searchAutocomplete(
        filter: AutocompleteSearchFilter(
          input: 'Soccer',
          includedPrimaryTypes: [PlaceType.sportingGoodsStore],
          locationBias: LocationBias(
            circle: Circle(
              center: ReferencePoint(
                latitude: 37.7749,
                longitude: -122.4194,
              ),
              radius: 500.0,
            ),
          ),
        ),
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body?.suggestions, isNotEmpty);
      final placePrediction =
          response.body?.suggestions.firstOrNull?.placePrediction;
      expect(placePrediction?.placeId, isNotNull);
      expect(placePrediction?.text, isNotNull);
      expect(placePrediction?.structuredFormat?.mainText?.text, isNotNull);
    });
    test(
        'Search within a circular area with locationBias, including Query Predictions, origin and no fields selection',
        () async {
      final response = await placesAPI.searchAutocomplete(
        filter: AutocompleteSearchFilter(
          input: 'Amoeba',
          includeQueryPredictions: true,
          origin: LatLng(
            latitude: 37.7749,
            longitude: -122.4194,
          ),
          locationBias: LocationBias(
            circle: Circle(
              center: ReferencePoint(
                latitude: 37.7749,
                longitude: -122.4194,
              ),
              radius: 5000.0,
            ),
          ),
        ),
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body?.suggestions, isNotEmpty);
      final placePrediction = response.body?.suggestions
          .firstWhereOrNull((item) => item.placePrediction != null)
          ?.placePrediction;
      expect(placePrediction?.placeId, isNotNull);
      expect(placePrediction?.text, isNotNull);
      expect(placePrediction?.structuredFormat?.mainText?.text, isNotNull);
      expect(placePrediction?.distanceMeters, greaterThanOrEqualTo(0));
      final queryPrediction = response.body?.suggestions
          .firstWhereOrNull((item) => item.queryPrediction != null)
          ?.queryPrediction;
      expect(queryPrediction?.text, isNotNull);
      expect(queryPrediction?.structuredFormat, isNotNull);
    });
  });

  group('Session Token', () {
    final sessionToken = SessionTokenHandler();
    final inputs = ['P', 'Pi', 'Pizz', 'Pizza', 'Pizza'];
    final placeId = Platform.environment['GOOGLE_PLACE_ID'];

    for (final input in inputs) {
      test('Autocomplete search "$input" with session token', () async {
        PlacesSuggestions? cachedSuggestions =
            sessionToken.suggestionsFromCache(input);
        if (cachedSuggestions == null) {
          final token = sessionToken.token;
          print(
              'Doing Autocomplete search for "$input" using sessionToken: $token used ${sessionToken.used} times');
          final response = await placesAPI.searchAutocomplete(
            instanceFields: PlacesSuggestions(
              suggestions: [
                Suggestion(
                  placePrediction: PlacePrediction(
                    placeId: '',
                    text: FormattableText(),
                  ),
                ),
              ],
            ),
            filter: AutocompleteSearchFilter(
              input: input,
              sessionToken: token,
              locationRestriction: LocationRestriction(
                circle: Circle(
                  center: ReferencePoint(
                    latitude: 37.7749,
                    longitude: -122.4194,
                  ),
                  radius: 5000,
                ),
              ),
            ),
          );
          expect(response.isSuccessful, true);
          sessionToken.cacheSuggestions(
              text: input, data: cachedSuggestions = response.body);
        } else {
          print(
              'No need to do Autocomplete search for "$input" as it is already cached');
        }
        expect(cachedSuggestions, isNotNull);
        expect(cachedSuggestions?.suggestions, isNotEmpty);
        final placePrediction =
            cachedSuggestions?.suggestions.firstOrNull?.placePrediction;
        expect(placePrediction?.placeId, isNotNull);
        expect(placePrediction?.text, isNotNull);
      });
    }

    for (int i = 0; i < 2; ++i) {
      test(
          'Place Details get for "$placeId" with session token after Autocomplete search',
          () async {
        Place? place = sessionToken.placeFromCache(placeId);
        if (place == null) {
          final token = sessionToken.token;
          print(
              'Doing Place Details get for "$placeId" using sessionToken: $token used ${sessionToken.used} times');
          final response = await placesAPI.getDetails(
            id: placeId ?? '',
            instanceFields: Place(
              id: '',
              displayName: LocalizedText(),
            ),
            filter: PlaceDetailsFilter(
              sessionToken: token,
            ),
          );
          expect(response.isSuccessful, true);
          sessionToken.cachePlaceDetails(
              id: placeId, data: place = response.body);
          print(
              'New sessionToken: ${sessionToken.token} generated after Place Details results cached');
        } else {
          print(
              'No need to do Place Details search for "$placeId" as it is already cached');
        }
        expect(place, isNotNull);
        expect(place?.id, isNotNull);
        expect(place?.displayName, isNotNull);
      });
    }
  });
}
