import 'dart:io';

import 'package:dio/dio.dart';
import 'package:google_maps_apis/src/new/base_api/rest_api.dart';
import 'package:google_maps_apis/src/new/base_api/rest_api_service.dart';
import 'package:google_maps_apis/src/new/entity/place_details.dart';
import 'package:google_maps_apis/src/new/entity/places_response.dart';
import 'package:google_maps_apis/src/new/filter/nearby_search_filter.dart';
import 'package:google_maps_apis/src/new/model/error_info.dart';
import 'package:google_maps_apis/src/new/model/google_error_response.dart';
import 'package:google_maps_apis/src/new/model/google_http_response.dart';
import 'package:google_maps_apis/src/new/service/places_service_new.dart';
import 'package:google_maps_apis/src/new/utils/map_utils.dart';
import 'package:http/http.dart' as http;

/// API service for the Places API (New): https://developers.google.com/maps/documentation/places/web-service/op-overview
///
/// [baseUrl] is the base url of the API, by default it's 'https://places.googleapis.com', but you could use some proxy base url to cache requests.
/// [token] is the token to be used in the requests, if you use this, you don't need to use [apiKey].
/// [tokenCallback] is a callback that returns the token to be used in the requests, if you use this, you don't need to use [apiKey] or [token].
/// [apiKey] is the api key to be used in the requests, if you use this, you don't need to use [token] or [tokenCallback].
/// [connectTimeout] is the maximum amount of time in milliseconds that the request can take to establish a connection.
/// [receiveTimeout] is the maximum amount of time in milliseconds that the request can take to receive data.
/// [sendTimeout] is the maximum amount of time in milliseconds that the request can take to send data.
/// [httpClient] is the client to be used in the requests, in case you want to use a custom client for logging or error reporting purposes.
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
  /// Once you have a place ID, you can request more details about a particular establishment
  /// or point of interest by initiating a Place Details (New) request.
  /// A Place Details (New) request returns more comprehensive information about the indicated place
  /// such as its complete address, phone number, user rating and reviews.
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
    /// Take into account including all fields is expensive in terms of quota usage and performance.
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
    return parseResponse(_service.getDetails(
      id: id,
      fields: fields ?? [],
    ));
  }

  /// Build photo url for requests
  ///
  /// Required params:
  ///  - [name] or [placeId] and [photoId]: If you opt to use [placeId] and [photoId], set only the ids without the resource name.
  ///  - [maxWidthPx] or [maxHeightPx]: You can specify one or both to set the the maximum desired height and width pixels of the image.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/place-photos#get-photo-ref
  String _buildPhotoUrl({
    /// This would be required only in case you initialized the [PlacesAPINew] with a [token] or [tokenCallback] instead of an [apiKey]. The reason is that the [apiKey] can be used as a query-param in the url.
    String? apiKey,

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

    /// Whether to follow redirects or not.
    /// If false, the photo binary will be obtained after a redirect.
    /// If true, a json will be obtained with the photo resource name and the final photo url.
    bool skipHttpRedirect = false,
  }) {
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

    Uri uri = Uri.parse(restAPI.dio.options.baseUrl).replace(
      path: '/v1/places/$placeId/photos/$photoId/media',
      queryParameters: {
        'key': apiKey ?? this.apiKey,
        'maxWidthPx': maxWidthPx?.toString(),
        'maxHeightPx': maxHeightPx?.toString(),
        'skipHttpRedirect': skipHttpRedirect.toString(),
      },
    );

    return uri.toString();
  }

  /// Build photo url of a Place. This function will return the photo url with the necessary params to request the photo binary.
  /// This function is ideal to be used directly with  some [ImageWidget] like [Image.network] or [CachedNetworkImage] so the image gets loaded directly from the url.
  /// Note: take into account the photo will be obtained after a redirect.
  ///
  /// Required params:
  ///  - [name] or [placeId] and [photoId]: If you opt to use [placeId] and [photoId], set only the ids without the resource name.
  ///  - [maxWidthPx] or [maxHeightPx]: You can specify one or both to set the the maximum desired height and width pixels of the image.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/place-photos#get-photo-ref
  String buildPhotoUrl({
    /// This would be required only in case you initialized the [PlacesAPINew] with a [token] or [tokenCallback] instead of an [apiKey]. The reason is that the [apiKey] can be used as a query-param in the url.
    String? apiKey,

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
  }) {
    return _buildPhotoUrl(
      apiKey: apiKey,
      name: name,
      placeId: placeId,
      photoId: photoId,
      maxWidthPx: maxWidthPx,
      maxHeightPx: maxHeightPx,
      skipHttpRedirect: false,
    );
  }

  /// Get the photo url of a Place after redirect, this means the final photo url will not use the apiKey nor the place or photo id.
  ///
  /// Required params:
  ///  - [name] or [placeId] and [photoId]: If you opt to use [placeId] and [photoId], set only the ids without the resource name.
  ///  - [maxWidthPx] or [maxHeightPx]: You can specify one or both to set the the maximum desired height and width pixels of the image.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/place-photos#get-photo-ref
  Future<GoogleHTTPResponse<String>> getPlainPhotoUrl({
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
    final requestOptions = RequestOptions(
      method: 'GET',
      baseUrl: _buildPhotoUrl(
        name: name,
        placeId: placeId,
        photoId: photoId,
        maxWidthPx: maxWidthPx,
        maxHeightPx: maxHeightPx,
        skipHttpRedirect: true,
      ),
      responseType: ResponseType.json,
      receiveTimeout: restAPI.receiveTimeout,
      connectTimeout: restAPI.connectTimeout,
      sendTimeout: restAPI.sendTimeout,
    );
    final response = await Dio().fetch<Map<String, dynamic>>(requestOptions);
    late Photo? photo =
        response.data == null ? null : Photo.fromJson(response.data!);
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
      photo?.photoUri,
      extraData: response.extra,
      error: response.statusCode != 200
          ? GoogleErrorResponse(
              error: ErrorInfo(message: 'Failed to fetch photo binary'),
            )
          : null,
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
    final requestOptions = RequestOptions(
      method: 'GET',
      baseUrl: _buildPhotoUrl(
        name: name,
        placeId: placeId,
        photoId: photoId,
        maxWidthPx: maxWidthPx,
        maxHeightPx: maxHeightPx,
        skipHttpRedirect: false,
      ),
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

  /// Searches nearby a specified location and radius.
  /// A Nearby Search (New) request takes one or more place types, and returns
  /// a list of matching places within the specified area. A field mask specifying
  /// one or more data types is required. Nearby Search (New) only supports POST requests.
  ///
  /// Required params:
  ///  - [id]: The id of the place.
  ///  - [allFields] or [fields] or [placeFields]: A definition of the fields to be included in the response must be specified.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search
  Future<GoogleHTTPResponse<PlacesResponse?>> searchNearby({
    /// If true, all fields will be included in the response. It's the same as using fields: ['*'].
    /// Take into account including all fields is expensive in terms of quota usage and performance.
    bool allFields = false,

    /// List of fields to be included in the response by creating a response field mask: https://developers.google.com/maps/documentation/places/web-service/nearby-search#fieldmask
    /// Take into account this function returns a list of [places], so the fields must be specified with the 'places.' hierarchy in mind, like 'places.id','places.displayName'.
    List<String>? fields,

    /// [Recommended] An instance of PlaceDetails where all fields that are not null will be used as the fields parameter taking into account the field hierarchy, as described here: https://developers.google.com/maps/documentation/places/web-service/nearby-search#fieldmask
    PlaceDetails? placeFields,

    /// Filters for the search
    required NearbySearchFilter filter,
  }) async {
    assert(allFields || fields != null || placeFields != null,
        'Ensure that allFields = true or fields != null, or placeFields != null with some field != null.');
    if (allFields) {
      fields = ['*'];
    } else {
      fields ??= placeFields?.toFieldsMask(parentKey: 'places');
    }
    return genericParseResponse(
      _service.searchNearby(
        fields: fields ?? [],
        filter: filter,
      ),
      dataType: PlacesResponse(places: []),
    );
  }
}
