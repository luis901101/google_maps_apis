library;

import 'dart:async';
import 'dart:io';

import 'package:google_maps_apis/directions.dart';

final directions =
    GoogleMapsDirections(apiKey: Platform.environment['API_KEY']);

Future<void> main() async {
  var res =
      await directions.directionsWithAddress('Paris, France', 'Rennes, France');

  print(res.status);
  if (res.isOk) {
    print('${res.routes?.length} routes');
    for (var r in res.routes ?? []) {
      print(r.summary);
      print(r.bounds);
    }
  } else {
    print(res.errorMessage);
  }

  directions.dispose();
}
