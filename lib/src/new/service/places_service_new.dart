import 'package:dio/dio.dart' hide Headers;
import 'package:google_maps_apis/src/new/entity/place_details.dart';
import 'package:google_maps_apis/src/new/entity/places_response.dart';
import 'package:google_maps_apis/src/new/filter/nearby_search_filter.dart';
import 'package:retrofit/retrofit.dart';

part 'places_service_new.g.dart';

@RestApi()
abstract class PlacesServiceNew {
  factory PlacesServiceNew({required Dio dio}) {
    return _PlacesServiceNew(dio, baseUrl: '${dio.options.baseUrl}/v1/places');
  }

  @GET('/{id}')
  Future<HttpResponse<PlaceDetails?>> getDetails({
    @Path() required String id,
    // @Header(RestAPIService.googleFieldMaskKey) required List<String> fields,
    @Query('fields') required List<String> fields,
  });

  @POST(':searchNearby')
  Future<HttpResponse<PlacesResponse?>> searchNearby({
    @Query('fields') required List<String> fields,
    @Body(nullToAbsent: true) required NearbySearchFilter filter,
  });
}
