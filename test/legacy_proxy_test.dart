import 'package:google_maps_apis/directions.dart';
import 'package:google_maps_apis/distance.dart';
import 'package:google_maps_apis/geocoding.dart';
import 'package:google_maps_apis/geolocation.dart';
import 'package:google_maps_apis/places.dart';
import 'package:google_maps_apis/timezone.dart';
import 'package:test/test.dart';

const _key = 'proxy-client-key';
final _location = Location(lat: 31.0424, lng: 42.421);

/// Builds one url with each Legacy Maps class for a base url, keyed by the
/// endpoint path that follows `/maps/api/`. Call a builder inside a test: the
/// api it creates is disposed at that test's teardown.
final Map<String, String Function(String baseUrl)> _endpoints = {
  'geocode/json': (baseUrl) {
    final api = GoogleMapsGeocoding(apiKey: _key, baseUrl: baseUrl);
    addTearDown(api.dispose);
    return api.buildUrl(address: 'Winnetka');
  },
  'place/nearbysearch/json': (baseUrl) {
    final api = GoogleMapsPlaces(apiKey: _key, baseUrl: baseUrl);
    addTearDown(api.dispose);
    return api.buildNearbySearchUrl(location: _location, radius: 500);
  },
  'directions/json': (baseUrl) {
    final api = GoogleMapsDirections(apiKey: _key, baseUrl: baseUrl);
    addTearDown(api.dispose);
    return api.buildUrl(origin: 'Toronto', destination: 'Montreal');
  },
  'distancematrix/json': (baseUrl) {
    final api = GoogleDistanceMatrix(apiKey: _key, baseUrl: baseUrl);
    addTearDown(api.dispose);
    return api.buildUrl(
      origin: <String>['Vancouver'],
      destination: <String>['Seattle'],
    );
  },
  'timezone/json': (baseUrl) {
    final api = GoogleMapsTimezone(apiKey: _key, baseUrl: baseUrl);
    addTearDown(api.dispose);
    return api.buildUrl(location: _location);
  },
};

/// Offline tests for using the Legacy APIs through a proxy: `baseUrl` is the
/// proxy origin, optionally with a path prefix, and each class appends its
/// endpoint's own path.
void main() {
  group('Legacy Maps urls with a proxy origin as base url', () {
    for (final MapEntry(key: endpoint, value: build) in _endpoints.entries) {
      test(endpoint, () {
        final uri = Uri.parse(build('https://proxy.example.com'));

        expect(uri.scheme, 'https');
        expect(uri.host, 'proxy.example.com');
        expect(uri.path, '/maps/api/$endpoint');
        expect(uri.queryParameters['key'], _key);
      });
    }
  });

  group('Legacy Maps urls with a path prefix in the base url', () {
    for (final baseUrl in [
      'https://proxy.example.com/gmaps',
      'https://proxy.example.com/gmaps/',
    ]) {
      for (final MapEntry(key: endpoint, value: build) in _endpoints.entries) {
        test('$endpoint ($baseUrl)', () {
          final uri = Uri.parse(build(baseUrl));

          expect(uri.host, 'proxy.example.com');
          expect(uri.path, '/gmaps/maps/api/$endpoint');
        });
      }

      test('Places photo url keeps the prefix ($baseUrl)', () {
        final places = GoogleMapsPlaces(apiKey: _key, baseUrl: baseUrl);
        addTearDown(places.dispose);

        final uri = Uri.parse(
          places.buildPhotoUrl(photoReference: 'PHOTO_REF', maxWidth: 400),
        );

        expect(uri.host, 'proxy.example.com');
        expect(uri.path, '/gmaps/maps/api/place/photo');
        expect(uri.queryParameters['photoreference'], 'PHOTO_REF');
        expect(uri.queryParameters['key'], _key);
      });
    }
  });

  test('Geolocation url with a proxy origin as base url', () {
    final geolocation = GoogleMapsGeolocation(
      apiKey: _key,
      baseUrl: 'https://proxy.example.com',
    );
    addTearDown(geolocation.dispose);

    final uri = Uri.parse(geolocation.buildUrl());

    expect(uri.host, 'proxy.example.com');
    expect(uri.path, '/geolocation/v1/geolocate');
    expect(uri.queryParameters['key'], _key);
  });
}
