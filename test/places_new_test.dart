import 'dart:async';
import 'dart:io';

import 'package:google_maps_apis/places_new.dart';
import 'package:test/test.dart';

Future<void> main() async {
  final apiKey = Platform.environment['GOOGLE_API_KEY'];
  final placeId = Platform.environment['GOOGLE_PLACE_ID'];
  var placesAPI = PlacesAPINew(apiKey: apiKey);
  await placesAPI.init();

  tearDownAll(() {
    placesAPI.dispose();
  });

  group('Get Place Details by ID', () {
    test('Get Place Details with all fields', () async {
      var response = await placesAPI.getDetails(
        id: placeId ?? '',
        fields: [],
        // fields: ['*'],
      );
      expect(response.isSuccessful, true);
      expect(response.body, isNotNull);
      expect(response.body?.id, placeId);
      expect(response.body?.name, isNotNull);
      expect(response.body?.location, isNotNull);
    });
  });
}
