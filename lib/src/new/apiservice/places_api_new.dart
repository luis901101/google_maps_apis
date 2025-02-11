import 'dart:io';

import 'package:dio/dio.dart';
import 'package:google_maps_apis/src/new/base_api/rest_api.dart';
import 'package:google_maps_apis/src/new/base_api/rest_api_service.dart';
import 'package:google_maps_apis/src/new/entity/place_details.dart';
import 'package:google_maps_apis/src/new/model/error_info.dart';
import 'package:google_maps_apis/src/new/model/google_error_response.dart';
import 'package:google_maps_apis/src/new/model/google_http_response.dart';
import 'package:google_maps_apis/src/new/service/places_service_new.dart';
import 'package:google_maps_apis/src/new/utils/map_utils.dart';
import 'package:http/http.dart' as http;

/// API service for the Places API (New): https://developers.google.com/maps/documentation/places/web-service/op-overview
class PlacesAPINew extends RestAPIService<PlaceDetails> {
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
  /// Required params:
  ///  - [id]: The id of the place.
  ///  - [allFields] or [fields] or [placeFields]: A definition of the fields to be included in the response must be specified.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/place-details
  Future<GoogleHTTPResponse<PlaceDetails?>> getDetails({
    /// Place identifier
    required String id,

    /// If true, all fields will be included in the response. It's the same as using fields: ['*'].
    bool allFields = false,

    /// List of fields to be included in the response by creating a response field mask: https://developers.google.com/maps/documentation/places/web-service/place-details#fieldmask
    List<String>? fields,

    /// [Recommended] An instance of PlaceDetails where all fields that are not null will be used as the fields parameter taking into account the field hierarchy, as described here: https://developers.google.com/maps/documentation/places/web-service/choose-fields#define_a_response_field_mask
    PlaceDetails? placeFields,
  }) async {
    assert(allFields || fields != null || placeFields != null,
        'Ensure that allFields = true or fields != null, or placeFields != null with some field != null.');
    if (allFields) {
      fields = ['*'];
    } else {
      fields ??= placeFields?.toFieldsMask();
    }
    final response = await parseResponse(_service.getDetails(
      id: id,
      fields: fields ?? [],
    ));
    return response;
  }

  /// Get photo url of a Place.
  ///
  /// Required params:
  ///  - [name] or [placeId] and [photoId]: If you opt to use [placeId] and [photoId], set only the ids without the resource name.
  ///  - [maxWidthPx] or [maxHeightPx]: You can specify one or both to set the the maximum desired height and width pixels of the image.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/place-photos#get-photo-ref
  Future<GoogleHTTPResponse<String>> getPhotoUrl({
    /// Photo resource name: https://developers.google.com/maps/documentation/places/web-service/place-photos#photo-name
    String? name,

    /// Place identifier
    String? placeId,

    /// Photo identifier
    String? photoId,

    /// Maximum desired width of the image in pixels: https://developers.google.com/maps/documentation/places/web-service/place-photos#maxheightpx-and-maxwidthpx
    int? maxWidthPx,

    /// Maximum desired height of the image in pixels: https://developers.google.com/maps/documentation/places/web-service/place-photos#maxheightpx-and-maxwidthpx
    int? maxHeightPx,
  }) async {
    assert(
        (name != null || (placeId != null && photoId != null)) &&
            (maxWidthPx != null || maxHeightPx != null),
        'Ensure that name != null or placeId != null and photoId != null. Also ensure that maxWidthPx != null or maxHeightPx != null.');
    try {
      if (name != null) {
        final split = name.split('/');
        placeId = split[1];
        photoId = split[3];
      }
    } catch (e) {
      throw Exception('Malformed Photo resource name');
    }
    final response = await genericParseResponse(
        _service.getPhoto(
          placeId: placeId ?? '',
          photoId: photoId ?? '',
          maxWidthPx: maxWidthPx,
          maxHeightPx: maxHeightPx,
        ),
        dataType: Photo());
    return GoogleHTTPResponse(
      response.base,
      response.body?.photoUri,
      error: response.error,
      extraData: response.extraData,
    );
  }

  /// Get photo binary of a Place.
  ///
  /// Required params:
  ///  - [name] or [placeId] and [photoId]: If you opt to use [placeId] and [photoId], set only the ids without the resource name.
  ///  - [maxWidthPx] or [maxHeightPx]: You can specify one or both to set the the maximum desired height and width pixels of the image.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/place-photos#get-photo-ref
  Future<GoogleHTTPResponse<List<int>?>> getPhotoBinary({
    /// Photo resource name: https://developers.google.com/maps/documentation/places/web-service/place-photos#photo-name
    String? name,

    /// Place identifier
    String? placeId,

    /// Photo identifier
    String? photoId,

    /// Maximum desired width of the image in pixels: https://developers.google.com/maps/documentation/places/web-service/place-photos#maxheightpx-and-maxwidthpx
    int? maxWidthPx,

    /// Maximum desired height of the image in pixels: https://developers.google.com/maps/documentation/places/web-service/place-photos#maxheightpx-and-maxwidthpx
    int? maxHeightPx,
  }) async {
    final responseUrl = await getPhotoUrl(
      name: name,
      placeId: placeId,
      photoId: photoId,
      maxWidthPx: maxWidthPx,
      maxHeightPx: maxHeightPx,
    );
    if (!responseUrl.isSuccessful) {
      return GoogleHTTPResponse(
        responseUrl.base,
        null,
        error: responseUrl.error,
        extraData: responseUrl.extraData,
      );
    }
    final requestOptions = RequestOptions(
      method: 'GET',
      baseUrl: responseUrl.body,
      responseType: ResponseType.bytes,
      receiveTimeout: restAPI.receiveTimeout,
      connectTimeout: restAPI.connectTimeout,
      sendTimeout: restAPI.sendTimeout,
    );
    final response = await Dio().fetch<List<int>>(requestOptions);
    return GoogleHTTPResponse(
      http.Response(
        '',
        response.statusCode ?? HttpStatus.notFound,
        headers: MapUtils.parseHeaders(response.headers) ?? {},
        isRedirect: response.isRedirect,
        request: http.Request(
          response.requestOptions.method,
          response.requestOptions.uri,
        ),
      ),
      response.data,
      extraData: response.extra,
      error: response.statusCode != 200
          ? GoogleErrorResponse(
              error: ErrorInfo(message: 'Failed to fetch photo binary'),
            )
          : null,
    );
  }
}
