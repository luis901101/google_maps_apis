import 'package:google_maps_apis/src/new/base_api/rest_api.dart';
import 'package:google_maps_apis/src/new/base_api/rest_api_service.dart';
import 'package:google_maps_apis/src/new/entity/place_details.dart';
import 'package:google_maps_apis/src/new/model/google_error_response.dart';
import 'package:google_maps_apis/src/new/model/google_http_response.dart';
import 'package:google_maps_apis/src/new/service/places_service_new.dart';

/// API service for the Places API (New): https://developers.google.com/maps/documentation/places/web-service/op-overview
class PlacesAPINew extends RestAPIService<PlaceDetails, GoogleErrorResponse> {
  late final PlacesServiceNew _service;
  PlacesAPINew({
    String? baseUrl,
    super.token,
    super.tokenCallback,
    super.apiKey,
    super.connectTimeout,
    super.receiveTimeout,
    super.sendTimeout,
    super.httpClient,
  }) : super(
          restAPI: RestAPI(),
          baseUrl: baseUrl ??= 'https://places.googleapis.com',
          dataType: PlaceDetails(),
        );

  @override
  Future<void> init() async {
    if (isInitialized) return;
    await super.init();
    _service = PlacesServiceNew(dio: restAPI.dio);
  }

  /// Fetch details of a place.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/place-details
  Future<GoogleHTTPResponse<PlaceDetails?>> getDetails({
    /// Place identifier
    required String id,

    /// Fields to be included in the response by creating a response field mask: https://developers.google.com/maps/documentation/places/web-service/place-details#fieldmask
    required List<String> fields,
  }) async {
    final response = await parseResponse(_service.getDetails(
      id: id,
      fields: fields,
    ));
    return response;
  }
}
