import 'package:dio/dio.dart' hide Headers;
import 'package:google_maps_apis/src/new/model/place.dart';
import 'package:google_maps_apis/src/new/model/places_response.dart';
import 'package:google_maps_apis/src/new/filter/autocomplete_search_filter.dart';
import 'package:google_maps_apis/src/new/filter/nearby_search_filter.dart';
import 'package:google_maps_apis/src/new/filter/place_details_filter.dart';
import 'package:google_maps_apis/src/new/filter/text_search_filter.dart';
import 'package:google_maps_apis/src/new/model/places_suggestions.dart';
import 'package:retrofit/retrofit.dart';

part 'places_service_new.g.dart';

@RestApi()
abstract class PlacesServiceNew {
  factory PlacesServiceNew({required Dio dio, ParseErrorLogger? errorLogger}) {
    return _PlacesServiceNew(
      dio,
      baseUrl: '${dio.options.baseUrl}/v1/places',
      errorLogger: errorLogger,
    );
  }

  @GET('/{id}')
  Future<HttpResponse<Place?>> getDetails({
    @Path() required String id,
    // @Header(RestAPIService.googleFieldMaskKey) required List<String> fields,
    @Query('fields') required List<String> fields,
    @Queries() PlaceDetailsFilter? filter,
    @CancelRequest() CancelToken? cancelToken,
  });

  @POST(':searchNearby')
  Future<HttpResponse<PlacesResponse?>> searchNearby({
    @Query('fields') required List<String> fields,
    @Body(nullToAbsent: true) required NearbySearchFilter filter,
    @CancelRequest() CancelToken? cancelToken,
  });

  @POST(':searchText')
  Future<HttpResponse<PlacesResponse?>> searchText({
    @Query('fields') required List<String> fields,
    @Body(nullToAbsent: true) required TextSearchFilter filter,
    @CancelRequest() CancelToken? cancelToken,
  });

  @POST(':autocomplete')
  Future<HttpResponse<PlacesSuggestions?>> searchAutocomplete({
    @Query('fields') required List<String>? fields,
    @Body(nullToAbsent: true) required AutocompleteSearchFilter filter,
    @CancelRequest() CancelToken? cancelToken,
  });
}
