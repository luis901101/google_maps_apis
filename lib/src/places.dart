import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:json_annotation/json_annotation.dart';

import 'core.dart';
import 'utils.dart';

part 'places.g.dart';

const _placesUrl = '/place';
const _nearbySearchUrl = '/nearbysearch/json';
const _textSearchUrl = '/textsearch/json';
const _detailsSearchUrl = '/details/json';
const _autocompleteUrl = '/autocomplete/json';
const _photoUrl = '/photo';
const _queryAutocompleteUrl = '/queryautocomplete/json';

/// https://developers.google.com/places/web-service/
class GoogleMapsPlaces extends GoogleWebService {
  GoogleMapsPlaces({
    super.apiKey,
    super.baseUrl,
    super.httpClient,
    super.apiHeaders,
  }) : super(
          apiPath: _placesUrl,
        );

  Future<PlacesSearchResponse> searchNearbyWithRadius(
    Location location,
    num radius, {
    String? type,
    String? keyword,
    String? language,
    PriceLevel? minprice,
    PriceLevel? maxprice,
    String? name,
    String? pagetoken,
  }) async {
    final url = buildNearbySearchUrl(
      location: location,
      language: language,
      radius: radius,
      type: type,
      keyword: keyword,
      minprice: minprice,
      maxprice: maxprice,
      name: name,
      pagetoken: pagetoken,
    );
    return _decodeSearchResponse(await doGet(url, headers: apiHeaders));
  }

  Future<PlacesSearchResponse> searchNearbyWithRankBy(
    Location location,
    String rankby, {
    String? type,
    String? keyword,
    String? language,
    PriceLevel? minprice,
    PriceLevel? maxprice,
    String? name,
    String? pagetoken,
  }) async {
    final url = buildNearbySearchUrl(
      location: location,
      language: language,
      type: type,
      rankby: rankby,
      keyword: keyword,
      minprice: minprice,
      maxprice: maxprice,
      name: name,
      pagetoken: pagetoken,
    );
    return _decodeSearchResponse(await doGet(url, headers: apiHeaders));
  }

  Future<PlacesSearchResponse> searchByText(
    String query, {
    Location? location,
    num? radius,
    PriceLevel? minprice,
    PriceLevel? maxprice,
    bool opennow = false,
    String? type,
    String? pagetoken,
    String? language,
    String? region,
  }) async {
    final url = buildTextSearchUrl(
      query: query,
      location: location,
      language: language,
      region: region,
      type: type,
      radius: radius,
      minprice: minprice,
      maxprice: maxprice,
      pagetoken: pagetoken,
      opennow: opennow,
    );
    return _decodeSearchResponse(await doGet(url, headers: apiHeaders));
  }

  Future<PlacesDetailsResponse> getDetailsByPlaceId(
    String placeId, {
    String? sessionToken,
    List<String> fields = const [],
    String? language,
    String? region,
  }) async {
    final url = buildDetailsUrl(
      placeId: placeId,
      sessionToken: sessionToken,
      fields: fields,
      language: language,
      region: region,
    );
    return _decodeDetailsResponse(await doGet(url, headers: apiHeaders));
  }

  Future<PlacesAutocompleteResponse> autocomplete(
    String input, {
    String? sessionToken,
    num? offset,
    Location? origin,
    Location? location,
    num? radius,
    String? language,
    List<String> types = const [],
    List<Component> components = const [],
    bool strictbounds = false,
    String? region,
  }) async {
    final url = buildAutocompleteUrl(
      sessionToken: sessionToken,
      input: input,
      origin: origin,
      location: location,
      offset: offset,
      radius: radius,
      language: language,
      types: types,
      components: components,
      strictbounds: strictbounds,
      region: region,
    );
    return _decodeAutocompleteResponse(await doGet(url, headers: apiHeaders));
  }

  Future<PlacesAutocompleteResponse> queryAutocomplete(
    String input, {
    num? offset,
    Location? location,
    num? radius,
    String? language,
  }) async {
    final url = buildQueryAutocompleteUrl(
      input: input,
      location: location,
      offset: offset,
      radius: radius,
      language: language,
    );
    return _decodeAutocompleteResponse(await doGet(url, headers: apiHeaders));
  }

  String buildNearbySearchUrl({
    Location? location,
    num? radius,
    String? type,
    String? keyword,
    String? language,
    PriceLevel? minprice,
    PriceLevel? maxprice,
    String? name,
    String? rankby,
    String? pagetoken,
  }) {
    if (radius != null && rankby != null) {
      throw ArgumentError(
          "'rankby' must not be included if 'radius' is specified.");
    }

    if (rankby == 'distance' &&
        keyword == null &&
        type == null &&
        name == null) {
      throw ArgumentError(
          "If 'rankby=distance' is specified, then one or more of 'keyword', 'name', or 'type' is required.");
    }

    final params = <String, String>{};

    if (location != null) {
      params['location'] = location.toString();
    }

    if (keyword != null) {
      params['keyword'] = keyword;
    }

    if (name != null) {
      params['name'] = name;
    }

    if (rankby != null) {
      params['rankby'] = rankby;
    }

    if (minprice != null) {
      params['minprice'] = minprice.index.toString();
    }

    if (maxprice != null) {
      params['maxprice'] = maxprice.index.toString();
    }

    if (type != null) {
      params['type'] = type;
    }

    if (pagetoken != null) {
      params['pagetoken'] = pagetoken;
    }

    if (language != null) {
      params['language'] = language;
    }

    if (radius != null) {
      params['radius'] = radius.toString();
    }

    if (apiKey != null) {
      params['key'] = apiKey!;
    }
    return url
        .replace(
          path: '${url.path}$_nearbySearchUrl',
          queryParameters: params,
        )
        .toString();
  }

  String buildTextSearchUrl({
    required String query,
    Location? location,
    num? radius,
    PriceLevel? minprice,
    PriceLevel? maxprice,
    bool opennow = false,
    String? type,
    String? pagetoken,
    String? language,
    String? region,
  }) {
    final params = <String, String>{
      'query': query,
    };

    if (minprice != null) {
      params['minprice'] = minprice.index.toString();
    }

    if (maxprice != null) {
      params['maxprice'] = maxprice.index.toString();
    }

    if (opennow) {
      params['opennow'] = opennow.toString();
    }

    if (type != null) {
      params['type'] = type;
    }

    if (pagetoken != null) {
      params['pagetoken'] = pagetoken;
    }

    if (language != null) {
      params['language'] = language;
    }

    if (region != null) {
      params['region'] = region;
    }

    if (location != null) {
      params['location'] = location.toString();
    }

    if (radius != null) {
      params['radius'] = radius.toString();
    }

    if (apiKey != null) {
      params['key'] = apiKey!;
    }

    return url
        .replace(
          path: '${url.path}$_textSearchUrl',
          queryParameters: params,
        )
        .toString();
  }

  String buildDetailsUrl({
    String? placeId,
    String? reference,
    String? sessionToken,
    String? language,
    List<String> fields = const [],
    String? region,
  }) {
    if (placeId != null && reference != null) {
      throw ArgumentError("You must supply either 'placeid' or 'reference'");
    }

    final params = <String, String>{};

    if (placeId != null) {
      params['placeid'] = placeId;
    }

    if (reference != null) {
      params['reference'] = reference;
    }

    if (language != null) {
      params['language'] = language;
    }

    if (region != null) {
      params['region'] = region;
    }

    if (fields.isNotEmpty) {
      params['fields'] = fields.join(',');
    }

    if (apiKey != null) {
      params['key'] = apiKey!;
    }

    if (sessionToken != null) {
      params['sessiontoken'] = sessionToken;
    }

    return url
        .replace(
          path: '${url.path}$_detailsSearchUrl',
          queryParameters: params,
        )
        .toString();
  }

  String buildAutocompleteUrl({
    required String input,
    String? sessionToken,
    num? offset,
    Location? origin,
    Location? location,
    num? radius,
    String? language,
    List<String> types = const [],
    List<Component> components = const [],
    bool strictbounds = false,
    String? region,
  }) {
    final params = <String, String>{
      'input': input,
    };

    if (language != null) {
      params['language'] = language;
    }

    if (origin != null) {
      params['origin'] = origin.toString();
    }

    if (location != null) {
      params['location'] = location.toString();
    }

    if (radius != null) {
      params['radius'] = radius.toString();
    }

    if (types.isNotEmpty) {
      params['types'] = types.join('|');
    }

    if (components.isNotEmpty) {
      params['components'] = components.join('|');
    }

    if (strictbounds) {
      params['strictbounds'] = strictbounds.toString();
    }

    if (offset != null) {
      params['offset'] = offset.toString();
    }

    if (region != null) {
      params['region'] = region;
    }

    if (apiKey != null) {
      params['key'] = apiKey!;
    }

    if (sessionToken != null) {
      params['sessiontoken'] = sessionToken;
    }

    return url
        .replace(
          path: '${url.path}$_autocompleteUrl',
          queryParameters: params,
        )
        .toString();
  }

  String buildQueryAutocompleteUrl({
    required String input,
    num? offset,
    Location? location,
    num? radius,
    String? language,
  }) {
    final params = <String, String>{
      'input': input,
    };

    if (language != null) {
      params['language'] = language;
    }

    if (location != null) {
      params['location'] = location.toString();
    }

    if (radius != null) {
      params['radius'] = radius.toString();
    }

    if (offset != null) {
      params['offset'] = offset.toString();
    }

    if (apiKey != null) {
      params['key'] = apiKey!;
    }

    return url
        .replace(
          path: '${url.path}$_queryAutocompleteUrl',
          queryParameters: params,
        )
        .toString();
  }

  String buildPhotoUrl({
    required String photoReference,
    int? maxWidth,
    int? maxHeight,
  }) {
    if (maxWidth == null && maxHeight == null) {
      throw ArgumentError("You must supply 'maxWidth' or 'maxHeight'");
    }

    final params = <String, String>{
      'photoreference': photoReference,
    };

    if (maxWidth != null) {
      params['maxwidth'] = maxWidth.toString();
    }

    if (maxHeight != null) {
      params['maxheight'] = maxHeight.toString();
    }

    if (apiKey != null) {
      params['key'] = apiKey!;
    }

    return url
        .replace(
          path: '${url.path}$_photoUrl',
          queryParameters: params,
        )
        .toString();
  }

  PlacesSearchResponse _decodeSearchResponse(Response res) =>
      PlacesSearchResponse.fromJson(json.decode(res.body));

  PlacesDetailsResponse _decodeDetailsResponse(Response res) =>
      PlacesDetailsResponse.fromJson(json.decode(res.body));

  PlacesAutocompleteResponse _decodeAutocompleteResponse(Response res) =>
      PlacesAutocompleteResponse.fromJson(json.decode(res.body));
}

@JsonSerializable()
class PlacesSearchResponse extends GoogleResponseStatus {
  final List<PlacesSearchResult>? results;

  /// JSON html_attributions
  final List<String>? htmlAttributions;

  /// JSON next_page_token
  final String? nextPageToken;

  PlacesSearchResponse({
    super.status,
    super.errorMessage,
    this.results,
    this.htmlAttributions,
    this.nextPageToken,
  });
  factory PlacesSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacesSearchResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PlacesSearchResponseToJson(this);
}

@JsonSerializable()
class PlacesSearchResult {
  final String? icon;
  final Geometry? geometry;
  final String? name;

  /// JSON opening_hours
  final PlaceOpeningHours? openingHours;

  final List<Photo>? photos;

  /// JSON place_id
  final String? placeId;

  final String? scope;

  /// JSON alt_ids
  final List<AlternativeId>? altIds;

  /// JSON price_level
  final PriceLevel? priceLevel;

  final num? rating;

  final List<String>? types;

  final String? vicinity;

  /// JSON formatted_address
  final String? formattedAddress;

  /// JSON permanently_closed
  final bool? permanentlyClosed;

  final String? id;

  final String? reference;

  PlacesSearchResult({
    this.id,
    this.reference,
    this.name,
    this.placeId,
    this.formattedAddress,
    this.photos,
    this.altIds,
    this.types,
    this.permanentlyClosed,
    this.icon,
    this.geometry,
    this.openingHours,
    this.scope,
    this.priceLevel,
    this.rating,
    this.vicinity,
  });

  factory PlacesSearchResult.fromJson(Map<String, dynamic> json) =>
      _$PlacesSearchResultFromJson(json);
  Map<String, dynamic> toJson() => _$PlacesSearchResultToJson(this);
}

/// Official docs: https://developers.google.com/maps/documentation/places/web-service/details
@JsonSerializable()
class PlaceDetails {
  /// JSON address_components
  final List<AddressComponent>? addressComponents;

  /// JSON adr_address
  final String? adrAddress;
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final BusinessStatus? businessStatus;
  final bool? curbsidePickup;
  final PlaceOpeningHours? currentOpeningHours;
  final bool? delivery;
  final bool? dineIn;
  final PlaceEditorialSummary? editorialSummary;

  /// JSON formatted_address
  final String? formattedAddress;

  /// JSON formatted_phone_number
  final String? formattedPhoneNumber;
  final Geometry? geometry;
  final String? icon;
  final String? iconBackgroundColor;
  final String? iconMaskBaseUri;

  /// JSON international_phone_number
  final String? internationalPhoneNumber;
  final String? name;

  /// JSON opening_hours
  final PlaceOpeningHours? openingHours;
  final List<Photo>? photos;
  final String? id;

  /// JSON place_id
  final String? placeId;
  final PlusCode? plusCode;

  /// JSON price_level
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final PriceLevel? priceLevel;
  final num? rating;
  final bool? reservable;
  final List<Review>? reviews;
  final List<PlaceOpeningHours>? secondaryOpeningHours;
  final bool? servesBeer;
  final bool? servesBreakfast;
  final bool? servesBrunch;
  final bool? servesDinner;
  final bool? servesLunch;
  final bool? servesVegetarianFood;
  final bool? servesWine;
  final bool? takeout;
  final List<String>? types;
  final String? url;
  final int? userRatingsTotal;

  /// JSON utc_offset
  final int? utcOffset;
  final String? vicinity;
  final String? website;
  final bool? wheelchairAccessibleEntrance;

  const PlaceDetails({
    this.addressComponents,
    this.adrAddress,
    this.businessStatus,
    this.curbsidePickup,
    this.currentOpeningHours,
    this.delivery,
    this.dineIn,
    this.editorialSummary,
    this.formattedAddress,
    this.formattedPhoneNumber,
    this.geometry,
    this.icon,
    this.iconBackgroundColor,
    this.iconMaskBaseUri,
    this.internationalPhoneNumber,
    this.name,
    this.openingHours,
    this.photos,
    this.id,
    this.placeId,
    this.plusCode,
    this.priceLevel,
    this.rating,
    this.reservable,
    this.reviews,
    this.secondaryOpeningHours,
    this.servesBeer,
    this.servesBreakfast,
    this.servesBrunch,
    this.servesDinner,
    this.servesLunch,
    this.servesVegetarianFood,
    this.servesWine,
    this.takeout,
    this.types,
    this.url,
    this.userRatingsTotal,
    this.utcOffset,
    this.vicinity,
    this.website,
    this.wheelchairAccessibleEntrance,
  });

  factory PlaceDetails.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$PlaceDetailsToJson(this);
}

/// Official docs: https://developers.google.com/maps/documentation/places/web-service/details#PlaceOpeningHours
@JsonSerializable()
class PlaceOpeningHours {
  final bool? openNow;

  final List<PlaceOpeningHoursPeriod>? periods;

  final List<PlaceSpecialDay>? specialDays;

  final String? type;

  final List<String>? weekdayText;

  const PlaceOpeningHours({
    this.openNow,
    this.periods,
    this.specialDays,
    this.type,
    this.weekdayText,
  });

  factory PlaceOpeningHours.fromJson(Map<String, dynamic> json) =>
      _$PlaceOpeningHoursFromJson(json);
  Map<String, dynamic> toJson() => _$PlaceOpeningHoursToJson(this);
}

@JsonSerializable()
class PlaceOpeningHoursPeriodDetail {
  final int day;
  final String time;
  final String? date;
  final bool? truncated;

  const PlaceOpeningHoursPeriodDetail({
    required this.day,
    required this.time,
    this.date,
    this.truncated,
  });

  DateTime toDateTime() => dayTimeToDateTime(day, time);

  factory PlaceOpeningHoursPeriodDetail.fromJson(Map<String, dynamic> json) =>
      _$PlaceOpeningHoursPeriodDetailFromJson(json);
  Map<String, dynamic> toJson() => _$PlaceOpeningHoursPeriodDetailToJson(this);
}

/// Official docs: https://developers.google.com/maps/documentation/places/web-service/details#PlaceOpeningHoursPeriod
@JsonSerializable()
class PlaceOpeningHoursPeriod {
  final PlaceOpeningHoursPeriodDetail open;
  final PlaceOpeningHoursPeriodDetail? close;

  PlaceOpeningHoursPeriod({required this.open, this.close});

  factory PlaceOpeningHoursPeriod.fromJson(Map<String, dynamic> json) =>
      _$PlaceOpeningHoursPeriodFromJson(json);
  Map<String, dynamic> toJson() => _$PlaceOpeningHoursPeriodToJson(this);
}

/// Official docs: https://developers.google.com/maps/documentation/places/web-service/details#PlaceSpecialDay
@JsonSerializable()
class PlaceSpecialDay {
  final String? date;
  final bool? exceptionalHours;

  const PlaceSpecialDay({this.date, this.exceptionalHours});

  factory PlaceSpecialDay.fromJson(Map<String, dynamic> json) =>
      _$PlaceSpecialDayFromJson(json);
  Map<String, dynamic> toJson() => _$PlaceSpecialDayToJson(this);
}

@JsonSerializable()
class Photo {
  /// JSON photo_reference
  final String? photoReference;
  final num? height;
  final num? width;

  /// JSON html_attributions
  final List<String>? htmlAttributions;

  Photo({
    this.photoReference,
    this.height,
    this.width,
    this.htmlAttributions,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}

@JsonSerializable()
class AlternativeId {
  /// JSON place_id
  final String placeId;

  final String scope;

  AlternativeId({required this.placeId, required this.scope});

  factory AlternativeId.fromJson(Map<String, dynamic> json) =>
      _$AlternativeIdFromJson(json);
  Map<String, dynamic> toJson() => _$AlternativeIdToJson(this);
}

enum PriceLevel {
  @JsonValue(0)
  free,

  @JsonValue(1)
  inexpensive,

  @JsonValue(2)
  moderate,

  @JsonValue(3)
  expensive,

  @JsonValue(4)
  veryExpensive,
}

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum BusinessStatus {
  operational,
  closedTemporarily,
  closedPermanently,
  ;
}

/// Official docs: https://developers.google.com/maps/documentation/places/web-service/details#PlaceEditorialSummary
@JsonSerializable()
class PlaceEditorialSummary {
  final String? language;
  final String? overview;

  const PlaceEditorialSummary({
    this.language,
    this.overview,
  });

  factory PlaceEditorialSummary.fromJson(Map<String, dynamic> json) =>
      _$PlaceEditorialSummaryFromJson(json);
  Map<String, dynamic> toJson() => _$PlaceEditorialSummaryToJson(this);
}

@JsonSerializable()
class PlusCode {
  final String? globalCode;
  final String? compoundCode;

  const PlusCode({
    this.globalCode,
    this.compoundCode,
  });

  factory PlusCode.fromJson(Map<String, dynamic> json) =>
      _$PlusCodeFromJson(json);
  Map<String, dynamic> toJson() => _$PlusCodeToJson(this);
}

@JsonSerializable()
class PlacesDetailsResponse extends GoogleResponseStatus {
  final PlaceDetails? result;

  /// JSON html_attributions
  final List<String>? htmlAttributions;

  PlacesDetailsResponse({
    super.status,
    super.errorMessage,
    this.result,
    this.htmlAttributions,
  });

  factory PlacesDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacesDetailsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PlacesDetailsResponseToJson(this);
}

@JsonSerializable()
class Review {
  /// JSON author_name
  final String authorName;
  final num rating;

  /// JSON relative_time_description
  final String relativeTimeDescription;
  final num time;

  /// JSON author_url
  final String? authorUrl;
  final String? language;
  final String? originalLanguage;

  /// JSON profile_photo_url
  final String? profilePhotoUrl;
  final String? text;
  final bool? translated;

  const Review({
    required this.authorName,
    required this.rating,
    required this.relativeTimeDescription,
    required this.time,
    this.authorUrl,
    this.language,
    this.originalLanguage,
    this.profilePhotoUrl,
    this.text,
    this.translated,
  });

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
  Map<String, dynamic> toJson() => _$ReviewToJson(this);
}

@JsonSerializable()
class PlacesAutocompleteResponse extends GoogleResponseStatus {
  final List<Prediction>? predictions;

  PlacesAutocompleteResponse({
    super.status,
    super.errorMessage,
    this.predictions,
  });

  factory PlacesAutocompleteResponse.fromJson(Map<String, dynamic> json) =>
      _$PlacesAutocompleteResponseFromJson(json);
  Map<String, dynamic> toJson() => _$PlacesAutocompleteResponseToJson(this);
}

@JsonSerializable()
class Prediction {
  final String? description;
  final String? id;

  final List<Term>? terms;

  final int? distanceMeters;

  /// JSON place_id
  final String? placeId;
  final String? reference;

  final List<String>? types;

  /// JSON matched_substrings
  final List<MatchedSubstring>? matchedSubstrings;

  final StructuredFormatting? structuredFormatting;

  Prediction({
    this.description,
    this.id,
    this.terms,
    this.distanceMeters,
    this.placeId,
    this.reference,
    this.types,
    this.matchedSubstrings,
    this.structuredFormatting,
  });

  factory Prediction.fromJson(Map<String, dynamic> json) =>
      _$PredictionFromJson(json);
  Map<String, dynamic> toJson() => _$PredictionToJson(this);
}

@JsonSerializable()
class Term {
  final num offset;
  final String value;

  Term({
    required this.offset,
    required this.value,
  });

  factory Term.fromJson(Map<String, dynamic> json) => _$TermFromJson(json);
  Map<String, dynamic> toJson() => _$TermToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Term &&
          runtimeType == other.runtimeType &&
          offset == other.offset &&
          value == other.value;

  @override
  int get hashCode => offset.hashCode ^ value.hashCode;
}

@JsonSerializable()
class MatchedSubstring {
  final num offset;
  final num length;

  MatchedSubstring({
    required this.offset,
    required this.length,
  });

  factory MatchedSubstring.fromJson(Map<String, dynamic> json) =>
      _$MatchedSubstringFromJson(json);
  Map<String, dynamic> toJson() => _$MatchedSubstringToJson(this);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MatchedSubstring &&
          runtimeType == other.runtimeType &&
          offset == other.offset &&
          length == other.length;

  @override
  int get hashCode => offset.hashCode ^ length.hashCode;
}

@JsonSerializable()
class StructuredFormatting {
  final String? mainText;

  final List<MatchedSubstring>? mainTextMatchedSubstrings;
  final String? secondaryText;

  StructuredFormatting({
    this.mainText,
    this.mainTextMatchedSubstrings,
    this.secondaryText,
  });

  factory StructuredFormatting.fromJson(Map<String, dynamic> json) =>
      _$StructuredFormattingFromJson(json);
  Map<String, dynamic> toJson() => _$StructuredFormattingToJson(this);
}
