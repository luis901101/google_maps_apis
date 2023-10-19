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

## Availables API

- [x] [Geocoding](https://developers.google.com/maps/documentation/geocoding/start)
- [ ] [Places](https://developers.google.com/places/web-service/)
  - [x] nearby search
  - [x] text search
  - [x] details
  - [ ] add
  - [ ] delete
  - [x] photo
  - [x] autocomplete
  - [x] queryautocomplete
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

### Places

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
