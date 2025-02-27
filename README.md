# google_maps_apis

## General Information

This is the Dart Library for Google Maps Webservices.
You can find the Google Maps Platform Documentation [here](https://developers.google.com/maps/web-services), but if you're new to this, you may want to start [here](https://developers.google.com/maps/gmp-get-started).

## Note:
This is a fork of the great package [google_maps_webservice](https://pub.dev/packages/google_maps_webservice) which was discontinued.
Thanks [@lejard-h](https://github.com/lejard-h) for this package.


## API Key

To use this library you need a **Web** API key. Follow [these](https://developers.google.com/places/web-service/get-api-key) steps to acquire the key relevant to your particular Dart application.

These keys are not to be used individually as Android or iOS API keys, but they are instead meant to be used in your Dart application.

## Available APIs

- [x] [Geocoding](https://developers.google.com/maps/documentation/geocoding/start)
- [x] [Places](https://developers.google.com/places/web-service/)
  - [x] Legacy
    - [x] [Place Details](https://developers.google.com/maps/documentation/places/web-service/details)
    - [x] [Place Photo](https://developers.google.com/maps/documentation/places/web-service/photos)
    - [x] [Nearby Search](https://developers.google.com/maps/documentation/places/web-service/search-nearby)
    - [x] [Text Search](https://developers.google.com/maps/documentation/places/web-service/search-text)
    - [x] [Place Autocomplete](https://developers.google.com/maps/documentation/places/web-service/autocomplete)
    - [x] [Query Autocomplete](https://developers.google.com/maps/documentation/places/web-service/query)
  - [x] **New (Recommended)**
    - [x] [Place Details (New)](https://developers.google.com/maps/documentation/places/web-service/place-details) _(replaces legacy Place Details)_
    - [x] [Place Photo (New)](https://developers.google.com/maps/documentation/places/web-service/place-photos) _(replaces legacy Place Photo)_
    - [x] [Nearby Search (New)](https://developers.google.com/maps/documentation/places/web-service/nearby-search) _(replaces legacy Nearby Search)_
    - [x] [Text Search (New)](https://developers.google.com/maps/documentation/places/web-service/text-search) _(replaces legacy Text Search)_
    - [x] [Autocomplete (New)](https://developers.google.com/maps/documentation/places/web-service/place-autocomplete) _(replaces legacy Place Autocomplete and Query Autocomplete)_
- [x] [Directions](https://developers.google.com/maps/documentation/directions/)
- [x] [Distance Matrix](https://developers.google.com/maps/documentation/distance-matrix/)
- [ ] [Geolocation](https://developers.google.com/maps/documentation/geolocation/intro)
- [ ] [Elevation](https://developers.google.com/maps/documentation/elevation/start)
- [ ] [Roads](https://developers.google.com/maps/documentation/roads/intro)
- [x] [Timezone](https://developers.google.com/maps/documentation/timezone/start)
- [x] [Static Map](https://developers.google.com/maps/documentation/maps-static/dev-guide)

## Usage

### Geocoding

```dart
import "package:google_maps_apis/geocoding.dart";

final geocoding = GoogleMapsGeocoding(apiKey: "<API_KEY>");
final geocoding = GoogleMapsGeocoding(apiKey: "<API_KEY>", httpClient: BrowserClient());
final geocoding = GoogleMapsGeocoding(baseUrl: "http://myProxy.com");

GeocodingResponse response = await geocoding.searchByAddress("1600 Amphitheatre Parkway, Mountain View, CA");
```

### Places Legacy

```dart
import "package:google_maps_apis/places.dart";

final places = GoogleMapsPlaces(apiKey: "<API_KEY>");
final places = GoogleMapsPlaces(apiKey: "<API_KEY>", httpClient: BrowserClient());
final places = GoogleMapsPlaces(baseUrl: "http://myProxy.com");

PlacesSearchResponse response = await places.searchNearbyWithRadius(Location(lat: 31.0424, lng: 42.421), 500);
PlacesSearchResponse response = await places.searchNearbyWithRankby(Location(lat: 31.0424, lng: 42.421), "distance");
PlacesSearchResponse response = await places.searchByText("123 Main Street");

PlacesDetailsResponse response = await places.getDetailsByPlaceId("PLACE_ID");
PlacesDetailsResponse response = await places.getDetailsByReference("REF");
```

### Places New
Each class, function and property is documented with the official Google Maps API documentation, and also points to the official documentation for further information.
```dart
import 'package:google_maps_apis/places_new.dart';

/// Initialize the places API
final placesAPI = PlacesAPINew(
  apiKey: apiKey,
  token: token,
  tokenCallback: () => token,
  sendTimeout: const Duration(seconds: 30),
  connectTimeout: const Duration(seconds: 30),
  receiveTimeout: const Duration(seconds: 30),
  httpClient: HttpClient(),
  baseUrl: 'https://my-proxy.com',
);

/// Get Place Details
/// Simple get place with all fields
final response = await placesAPI.getDetails(
  id: placeId ?? '',
  allFields: true,
);

/// Get place with specific fields as a hardcoded list
final response = await placesAPI.getDetails(
  id: placeId ?? '',
  fields: [
  'id',
  'name',
  'formattedAddress',
  'addressComponents.longText',
  'viewport.low.latitude',
  'rating',
  'regularOpeningHours.periods.open.day',
  ],
);

/// Get place with specific fields using instance fields (recommended to use instance fields to avoid errors when specifying fields)
final response = await placesAPI.getDetails(
  id: placeId,
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
});

/// Build place photo url from photo resource name or placeId and photoId
final url = placesAPI.buildPhotoUrl(
  name: photoResourceName,
  placeId: placeId,
  photoId: photoId,
  maxWidthPx: 3840,
  maxHeightPx: 3840,
);

/// Get place photo url from photo resource name or placeId and photoId
final response = await placesAPI.getPlainPhotoUrl(
  name: 'places/$placeId/photos/$photoId',
  placeId: placeId,
  photoId: photoId,
  maxWidthPx: 3840,
  maxHeightPx: 3840,
);

/// Get place photo binary from photo resource name or placeId and photoId
final response = await placesAPI.getPhotoBinary(
  name: 'places/$placeId/photos/$photoId',
  placeId: placeId,
  photoId: photoId,
  maxWidthPx: 3840,
  maxHeightPx: 3840,
);

/// Do nearby search request
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
    maxResultCount: maxResultCount,
    locationRestriction: LocationRestrictionCircle(
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

/// Do text search request
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
    priceLevels: priceLevels,
    pageToken: nextPageToken,
  ),
);

/// Do autocomplete search request with session token
final sessionToken = SessionTokenHandler();
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
    input: 'Soccer',
    includedPrimaryTypes: [PlaceType.sportingGoodsStore],
    sessionToken: sessionToken.token,
    locationBias: LocationBias(
      rectangle: Rectangle(
        low: Coordinates(
          latitude: 37.7751,
          longitude: -122.4219,
        ),
        high: Coordinates(
          latitude: 37.7955,
          longitude: -122.3937,
        ),
      ),
    ),
  ),
);
/// Do several autocomplete search requests with the same [session.token] and then a Get Details
final response = await placesAPI.getDetails(
  id: placeId,
  filter: PlaceDetailsFilter(
    sessionToken: sessionToken.token,
  ),
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
});

```

### Timezone

```dart
import "package:google_maps_apis/timezone.dart";

final timezone = GoogleMapsTimezone(apiKey: "<API_KEY>");
final timezone = GoogleMapsTimezone(apiKey: "<API_KEY>", httpClient: BrowserClient());
final timezone = GoogleMapsTimezone(baseUrl: "http://myProxy.com");

TimezoneResponse response = await timezone.getByLocation(Location(lat: 31.0424, lng: 42.421));
TimezoneResponse response = await timezone.getByLocation(Location(lat: 31.0424, lng: 42.421), timestamp: DateTime.utc(2019, 4, 24));
TimezoneResponse response = await timezone.getByLocation(Location(lat: 31.0424, lng: 42.421), timestamp: DateTime.utc(2019, 4, 24), language: 'es');
```

### Static Map

```dart

  StaticMap mapStatic = StaticMap(
    apiKey,
    markers: List.from([
      Location(lat: 23.721160, lng: 90.394435),
      Location(lat: 23.732322, lng: 90.385142),]
    ),
    path: Path(
      enc: 'svh~F`j}uOusC`bD',
      color: 'black',
    ),
    scale: 'false'
  )

  String url = mapStatic.getUrl();

  Image.network(url)


```

### Proxy

In case of using a proxy the baseUrl can be set.
The apiKey is not required in case the proxy sets it. (Not storing the apiKey in the app is good practice)

### Feature Requests and Issues

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/luis901101/google_maps_apis/issues/new
