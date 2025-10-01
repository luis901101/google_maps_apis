import 'package:dio/dio.dart';
import 'package:google_maps_apis/src/new/base_api/rest_api_service.dart';
import 'package:google_maps_apis/src/new/filter/autocomplete_search_filter.dart';
import 'package:google_maps_apis/src/new/filter/nearby_search_filter.dart';
import 'package:google_maps_apis/src/new/filter/place_details_filter.dart';
import 'package:google_maps_apis/src/new/filter/text_search_filter.dart';
import 'package:google_maps_apis/src/new/model/error_info.dart';
import 'package:google_maps_apis/src/new/model/google_error_response.dart';
import 'package:google_maps_apis/src/new/model/google_http_response.dart';
import 'package:google_maps_apis/src/new/model/photo.dart';
import 'package:google_maps_apis/src/new/model/place.dart';
import 'package:google_maps_apis/src/new/model/places_response.dart';
import 'package:google_maps_apis/src/new/model/places_suggestions.dart';
import 'package:google_maps_apis/src/new/service/places_service_new.dart';
import 'package:google_maps_apis/src/new/utils/custom_parser_error_logger.dart';
import 'package:google_maps_apis/src/new/utils/map_utils.dart';
import 'package:http/http.dart' as http;
import 'package:retrofit/retrofit.dart';

/// API service for the Places API (New): https://developers.google.com/maps/documentation/places/web-service/op-overview
///
/// [baseUrl] is the base url of the API, by default it's 'https://places.googleapis.com',
/// but you could use some proxy base url to cache requests.
/// [token] is the token to be used in the requests, if you use this, you don't
/// need to use [apiKey].
/// [tokenCallback] is a callback that returns the token to be used in the requests,
/// if you use this, you don't need to use [apiKey] or [token].
/// [apiKey] is the api key to be used in the requests, if you use this, you
/// don't need to use [token] or [tokenCallback].
/// [connectTimeout] is the maximum amount of time in milliseconds that the request
/// can take to establish a connection.
/// [receiveTimeout] is the maximum amount of time in milliseconds that the request
/// can take to receive data.
/// [sendTimeout] is the maximum amount of time in milliseconds that the request
/// can take to send data.
/// [httpClientAdapter] is the client adapter if you need to customize how http
/// requests are made, note you should use either [IOHttpClientAdapter] on
/// `dart:io` native platforms or [BrowserHttpClientAdapter] on `dart:html`
/// web platforms.
/// [errorLogger] is a logger for errors that occur during parsing of response data.
/// [headers] allows adding global HTTP headers for all requests.
/// [cancelTokenCallback] enables programmatically cancelling in-flight requests for this API.
/// When cancelling a cancel token all current and future requests using the token
/// will be cancelled. So make sure you reset the token returned by the [CancelTokenCallback]
/// if you want to continue using the API.
/// [interceptors] enables advanced customization like logging, retries and rate limiting.
class PlacesAPINew extends RestAPIService<Place> {
  late final PlacesServiceNew _service;
  PlacesAPINew({
    super.token,
    super.apiKey,
    String? baseUrl,
    super.connectTimeout,
    super.receiveTimeout,
    super.sendTimeout,
    super.httpClientAdapter,
    super.headers,
    super.tokenCallback,
    super.cancelTokenCallback,
    super.interceptors,
    ParseErrorLogger? errorLogger,
  }) : super(
         baseUrl: baseUrl ??= 'https://places.googleapis.com',
         dataType: Place(),
       ) {
    _service = PlacesServiceNew(
      dio: restAPI.dio,
      errorLogger: errorLogger ?? CustomParseErrorLogger(),
    );
  }

  List<String> _checkFields({
    bool allFields = false,
    List<String>? fields,
    Place? placeDetailsFields,
    PlacesResponse? placeResponseFields,
    PlacesSuggestions? placeSuggestionsFields,
  }) {
    assert(
      allFields ||
          fields != null ||
          placeDetailsFields != null ||
          placeResponseFields != null ||
          placeSuggestionsFields != null,
      'Ensure that allFields = true or fields != null, or instanceFields != null with some field != null or .',
    );
    if (allFields) {
      fields = ['*'];
    } else {
      fields ??=
          placeDetailsFields?.toFieldsMask() ??
          placeResponseFields?.toFieldsMask() ??
          placeSuggestionsFields?.toFieldsMask();
    }
    return fields ?? [];
  }

  /// Fetch details of a place.
  /// Once you have a place ID, you can request more details about a particular establishment
  /// or point of interest by initiating a Place Details (New) request.
  /// A Place Details (New) request returns more comprehensive information about the indicated place
  /// such as its complete address, phone number, user rating and reviews.
  ///
  /// Required params:
  ///  - [id]: The id of the place.
  ///  - [allFields] or [fields] or [instanceFields]: A definition of the fields to be included in the response must be specified.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/place-details
  Future<GoogleHTTPResponse<Place?>> getDetails({
    /// Place identifier
    required String id,

    /// If true, all fields will be included in the response. It's the same as using fields: ['*'].
    /// Take into account including all fields is expensive in terms of quota usage and performance.
    bool allFields = false,

    /// List of fields to be included in the response by creating a response field mask: https://developers.google.com/maps/documentation/places/web-service/place-details#fieldmask
    List<String>? fields,

    /// [Recommended] An instance of PlaceDetails where all fields that are not null will be used as the fields parameter taking into account the field hierarchy, as described here: https://developers.google.com/maps/documentation/places/web-service/choose-fields#define_a_response_field_mask
    Place? instanceFields,

    /// Basic filters for specifying [languageCode], [regionCode] and [sessionToken]
    PlaceDetailsFilter? filter,

    /// Used to cancel the request, if not specified, the default [cancelToken] of the [PlacesAPINew] will be used.
    CancelToken? cancelToken,
  }) async {
    fields = _checkFields(
      allFields: allFields,
      fields: fields,
      placeDetailsFields: instanceFields,
    );
    return parseResponse(
      _service.getDetails(
        id: id,
        fields: fields,
        filter: filter,
        cancelToken: cancelToken ?? restAPI.cancelTokenCallback?.call(),
      ),
    );
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
      'Ensure that name != null or placeId != null and photoId != null. Also ensure that maxWidthPx != null or maxHeightPx != null.',
    );
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
        'key': apiKey ?? restAPI.apiKey,
        if (maxWidthPx != null) 'maxWidthPx': maxWidthPx.toString(),
        if (maxHeightPx != null) 'maxHeightPx': maxHeightPx.toString(),
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
  }) => _buildPhotoUrl(
    apiKey: apiKey,
    name: name,
    placeId: placeId,
    photoId: photoId,
    maxWidthPx: maxWidthPx,
    maxHeightPx: maxHeightPx,
    skipHttpRedirect: false,
  );

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

    /// Used to cancel the request, if not specified, the default [cancelToken] of the [PlacesAPINew] will be used.
    CancelToken? cancelToken,
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
      cancelToken: cancelToken ?? restAPI.cancelTokenCallback?.call(),
    );
    final response = await restAPI.dio.fetch<Map<String, dynamic>>(
      requestOptions,
    );
    late Photo? photo = response.data == null
        ? null
        : Photo.fromJson(response.data!);
    return GoogleHTTPResponse(
      http.Response(
        '',
        response.statusCode ?? 404,
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

    /// Used to cancel the request, if not specified, the default [cancelToken] of the [PlacesAPINew] will be used.
    CancelToken? cancelToken,
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
      cancelToken: cancelToken ?? restAPI.cancelTokenCallback?.call(),
    );
    final response = await restAPI.dio.fetch<List<int>>(requestOptions);
    return GoogleHTTPResponse(
      http.Response(
        '',
        response.statusCode ?? 404,
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
  ///  - [allFields] or [fields] or [instanceFields]: A definition of the fields to be included in the response must be specified.
  ///  - [filter]: Filters for the search.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/nearby-search
  Future<GoogleHTTPResponse<PlacesResponse?>> searchNearby({
    /// If true, all fields will be included in the response. It's the same as using fields: ['*'].
    /// Take into account including all fields is expensive in terms of quota usage and performance.
    bool allFields = false,

    /// List of fields to be included in the response by creating a response field mask: https://developers.google.com/maps/documentation/places/web-service/nearby-search#fieldmask
    /// Take into account this function returns a list of [places], so the fields must be specified with the 'places.' hierarchy in mind, like 'places.id','places.displayName'.
    List<String>? fields,

    /// [Recommended] An instance of PlacesResponse where all fields that are not null will be used as the fields parameter taking into account the field hierarchy, as described here: https://developers.google.com/maps/documentation/places/web-service/nearby-search#fieldmask
    PlacesResponse? instanceFields,

    /// Filters for the search
    required NearbySearchFilter filter,

    /// Used to cancel the request, if not specified, the default [cancelToken] of the [PlacesAPINew] will be used.
    CancelToken? cancelToken,
  }) async {
    fields = _checkFields(
      allFields: allFields,
      fields: fields,
      placeResponseFields: instanceFields,
    );
    return genericParseResponse(
      _service.searchNearby(
        fields: fields,
        filter: filter,
        cancelToken: cancelToken ?? restAPI.cancelTokenCallback?.call(),
      ),
      dataType: PlacesResponse(places: []),
    );
  }

  /// Searches by text with multiple possible filters.
  /// Text Search (New) returns information about a set of places based on a string,
  /// for example, "pizza in New York" or "shoe stores near Ottawa" or "123 Main Street".
  /// The service responds with a list of places matching the text string and any
  /// location bias that has been set.
  ///
  /// Required params:
  ///  - [allFields] or [fields] or [instanceFields]: A definition of the fields to be included in the response must be specified.
  ///  - [filter]: Filters for the search.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/text-search
  Future<GoogleHTTPResponse<PlacesResponse?>> searchText({
    /// If true, all fields will be included in the response. It's the same as using fields: ['*'].
    /// Take into account including all fields is expensive in terms of quota usage and performance.
    bool allFields = false,

    /// List of fields to be included in the response by creating a response field mask: https://developers.google.com/maps/documentation/places/web-service/text-search#fieldmask
    /// Take into account this function returns a list of [places], so the fields must be specified with the 'places.' hierarchy in mind, like 'places.id','places.displayName'.
    List<String>? fields,

    /// [Recommended] An instance of PlacesResponse where all fields that are not null will be used as the fields parameter taking into account the field hierarchy, as described here: https://developers.google.com/maps/documentation/places/web-service/text-search#fieldmask
    PlacesResponse? instanceFields,

    /// Filters for the search
    required TextSearchFilter filter,

    /// Used to cancel the request, if not specified, the default [cancelToken] of the [PlacesAPINew] will be used.
    CancelToken? cancelToken,
  }) async {
    fields = _checkFields(
      allFields: allFields,
      fields: fields,
      placeResponseFields: instanceFields,
    );
    return genericParseResponse(
      _service.searchText(
        fields: fields,
        filter: filter,
        cancelToken: cancelToken ?? restAPI.cancelTokenCallback?.call(),
      ),
      dataType: PlacesResponse(),
    );
  }

  /// Searches by text with multiple possible filters.
  /// The Autocomplete (New) service is a web service that returns place predictions
  /// and query predictions in response to an HTTP request. In the request,
  /// specify a text search string and geographic bounds that controls the search area.
  ///
  /// The Autocomplete (New) service can match on full words and substrings of
  /// the input, resolving place names, addresses, and plus codes. Applications
  /// can therefore send queries as the user types, to provide on-the-fly place
  /// and query predictions.
  ///
  /// Required params:
  ///  - [filter]: Filters for the search.
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/place-autocomplete
  Future<GoogleHTTPResponse<PlacesSuggestions?>> searchAutocomplete({
    /// If true, all fields will be included in the response. It's the same as using fields: ['*'].
    /// Take into account including all fields is expensive in terms of quota usage and performance.
    bool allFields = false,

    /// List of fields to be included in the response by creating a response field mask: https://developers.google.com/maps/documentation/places/web-service/text-search#fieldmask
    /// Take into account this function returns a list of [places], so the fields must be specified with the 'places.' hierarchy in mind, like 'places.id','places.displayName'.
    List<String>? fields,

    /// [Recommended] An instance of PlacesResponse where all fields that are not null will be used as the fields parameter taking into account the field hierarchy, as described here: https://developers.google.com/maps/documentation/places/web-service/text-search#fieldmask
    PlacesSuggestions? instanceFields,

    /// Filters for the search
    required AutocompleteSearchFilter filter,

    /// Used to cancel the request, if not specified, the default [cancelToken] of the [PlacesAPINew] will be used.
    CancelToken? cancelToken,
  }) async {
    if (allFields || fields != null || instanceFields != null) {
      fields = _checkFields(
        allFields: allFields,
        fields: fields,
        placeSuggestionsFields: instanceFields,
      );
    }
    return genericParseResponse(
      _service.searchAutocomplete(
        fields: fields,
        filter: filter,
        cancelToken: cancelToken ?? restAPI.cancelTokenCallback?.call(),
      ),
      dataType: PlacesSuggestions(),
    );
  }
}
