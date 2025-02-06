// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesSearchResponse _$PlacesSearchResponseFromJson(
        Map<String, dynamic> json) =>
    PlacesSearchResponse(
      status: $enumDecodeNullable(_$ResponseStatusEnumMap, json['status']),
      errorMessage: json['error_message'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => PlacesSearchResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      htmlAttributions: (json['html_attributions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nextPageToken: json['next_page_token'] as String?,
    );

Map<String, dynamic> _$PlacesSearchResponseToJson(
        PlacesSearchResponse instance) =>
    <String, dynamic>{
      'status': _$ResponseStatusEnumMap[instance.status]!,
      if (instance.errorMessage case final value?) 'error_message': value,
      if (instance.results case final value?) 'results': value,
      if (instance.htmlAttributions case final value?)
        'html_attributions': value,
      if (instance.nextPageToken case final value?) 'next_page_token': value,
    };

const _$ResponseStatusEnumMap = {
  ResponseStatus.ok: 'OK',
  ResponseStatus.zeroResults: 'ZERO_RESULTS',
  ResponseStatus.overQueryLimit: 'OVER_QUERY_LIMIT',
  ResponseStatus.requestDenied: 'REQUEST_DENIED',
  ResponseStatus.invalidRequest: 'INVALID_REQUEST',
  ResponseStatus.unknownError: 'UNKNOWN_ERROR',
  ResponseStatus.notFound: 'NOT_FOUND',
  ResponseStatus.maxWaypointsExceeded: 'MAX_WAYPOINTS_EXCEEDED',
  ResponseStatus.maxRouteLengthExceeded: 'MAX_ROUTE_LENGTH_EXCEEDED',
};

PlacesSearchResult _$PlacesSearchResultFromJson(Map<String, dynamic> json) =>
    PlacesSearchResult(
      id: json['id'] as String?,
      reference: json['reference'] as String?,
      name: json['name'] as String?,
      placeId: json['place_id'] as String?,
      formattedAddress: json['formatted_address'] as String?,
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      altIds: (json['alt_ids'] as List<dynamic>?)
          ?.map((e) => AlternativeId.fromJson(e as Map<String, dynamic>))
          .toList(),
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      permanentlyClosed: json['permanently_closed'] as bool?,
      icon: json['icon'] as String?,
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      openingHours: json['opening_hours'] == null
          ? null
          : PlaceOpeningHours.fromJson(
              json['opening_hours'] as Map<String, dynamic>),
      scope: json['scope'] as String?,
      priceLevel: $enumDecodeNullable(_$PriceLevelEnumMap, json['price_level']),
      rating: json['rating'] as num?,
      vicinity: json['vicinity'] as String?,
    );

Map<String, dynamic> _$PlacesSearchResultToJson(PlacesSearchResult instance) =>
    <String, dynamic>{
      if (instance.icon case final value?) 'icon': value,
      if (instance.geometry case final value?) 'geometry': value,
      if (instance.name case final value?) 'name': value,
      if (instance.openingHours case final value?) 'opening_hours': value,
      if (instance.photos case final value?) 'photos': value,
      if (instance.placeId case final value?) 'place_id': value,
      if (instance.scope case final value?) 'scope': value,
      if (instance.altIds case final value?) 'alt_ids': value,
      if (_$PriceLevelEnumMap[instance.priceLevel] case final value?)
        'price_level': value,
      if (instance.rating case final value?) 'rating': value,
      if (instance.types case final value?) 'types': value,
      if (instance.vicinity case final value?) 'vicinity': value,
      if (instance.formattedAddress case final value?)
        'formatted_address': value,
      if (instance.permanentlyClosed case final value?)
        'permanently_closed': value,
      if (instance.id case final value?) 'id': value,
      if (instance.reference case final value?) 'reference': value,
    };

const _$PriceLevelEnumMap = {
  PriceLevel.free: 0,
  PriceLevel.inexpensive: 1,
  PriceLevel.moderate: 2,
  PriceLevel.expensive: 3,
  PriceLevel.veryExpensive: 4,
};

PlaceDetails _$PlaceDetailsFromJson(Map<String, dynamic> json) => PlaceDetails(
      addressComponents: (json['address_components'] as List<dynamic>?)
          ?.map((e) => AddressComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      adrAddress: json['adr_address'] as String?,
      businessStatus: $enumDecodeNullable(
          _$BusinessStatusEnumMap, json['business_status'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
      curbsidePickup: json['curbside_pickup'] as bool?,
      currentOpeningHours: json['current_opening_hours'] == null
          ? null
          : PlaceOpeningHours.fromJson(
              json['current_opening_hours'] as Map<String, dynamic>),
      delivery: json['delivery'] as bool?,
      dineIn: json['dine_in'] as bool?,
      editorialSummary: json['editorial_summary'] == null
          ? null
          : PlaceEditorialSummary.fromJson(
              json['editorial_summary'] as Map<String, dynamic>),
      formattedAddress: json['formatted_address'] as String?,
      formattedPhoneNumber: json['formatted_phone_number'] as String?,
      geometry: json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      icon: json['icon'] as String?,
      iconBackgroundColor: json['icon_background_color'] as String?,
      iconMaskBaseUri: json['icon_mask_base_uri'] as String?,
      internationalPhoneNumber: json['international_phone_number'] as String?,
      name: json['name'] as String?,
      openingHours: json['opening_hours'] == null
          ? null
          : PlaceOpeningHours.fromJson(
              json['opening_hours'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      placeId: json['place_id'] as String?,
      plusCode: json['plus_code'] == null
          ? null
          : PlusCode.fromJson(json['plus_code'] as Map<String, dynamic>),
      priceLevel: $enumDecodeNullable(_$PriceLevelEnumMap, json['price_level'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
      rating: json['rating'] as num?,
      reservable: json['reservable'] as bool?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      secondaryOpeningHours: (json['secondary_opening_hours'] as List<dynamic>?)
          ?.map((e) => PlaceOpeningHours.fromJson(e as Map<String, dynamic>))
          .toList(),
      servesBeer: json['serves_beer'] as bool?,
      servesBreakfast: json['serves_breakfast'] as bool?,
      servesBrunch: json['serves_brunch'] as bool?,
      servesDinner: json['serves_dinner'] as bool?,
      servesLunch: json['serves_lunch'] as bool?,
      servesVegetarianFood: json['serves_vegetarian_food'] as bool?,
      servesWine: json['serves_wine'] as bool?,
      takeout: json['takeout'] as bool?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      url: json['url'] as String?,
      userRatingsTotal: (json['user_ratings_total'] as num?)?.toInt(),
      utcOffset: (json['utc_offset'] as num?)?.toInt(),
      vicinity: json['vicinity'] as String?,
      website: json['website'] as String?,
      wheelchairAccessibleEntrance:
          json['wheelchair_accessible_entrance'] as bool?,
    );

Map<String, dynamic> _$PlaceDetailsToJson(PlaceDetails instance) =>
    <String, dynamic>{
      if (instance.addressComponents case final value?)
        'address_components': value,
      if (instance.adrAddress case final value?) 'adr_address': value,
      if (_$BusinessStatusEnumMap[instance.businessStatus] case final value?)
        'business_status': value,
      if (instance.curbsidePickup case final value?) 'curbside_pickup': value,
      if (instance.currentOpeningHours case final value?)
        'current_opening_hours': value,
      if (instance.delivery case final value?) 'delivery': value,
      if (instance.dineIn case final value?) 'dine_in': value,
      if (instance.editorialSummary case final value?)
        'editorial_summary': value,
      if (instance.formattedAddress case final value?)
        'formatted_address': value,
      if (instance.formattedPhoneNumber case final value?)
        'formatted_phone_number': value,
      if (instance.geometry case final value?) 'geometry': value,
      if (instance.icon case final value?) 'icon': value,
      if (instance.iconBackgroundColor case final value?)
        'icon_background_color': value,
      if (instance.iconMaskBaseUri case final value?)
        'icon_mask_base_uri': value,
      if (instance.internationalPhoneNumber case final value?)
        'international_phone_number': value,
      if (instance.name case final value?) 'name': value,
      if (instance.openingHours case final value?) 'opening_hours': value,
      if (instance.photos case final value?) 'photos': value,
      if (instance.id case final value?) 'id': value,
      if (instance.placeId case final value?) 'place_id': value,
      if (instance.plusCode case final value?) 'plus_code': value,
      if (_$PriceLevelEnumMap[instance.priceLevel] case final value?)
        'price_level': value,
      if (instance.rating case final value?) 'rating': value,
      if (instance.reservable case final value?) 'reservable': value,
      if (instance.reviews case final value?) 'reviews': value,
      if (instance.secondaryOpeningHours case final value?)
        'secondary_opening_hours': value,
      if (instance.servesBeer case final value?) 'serves_beer': value,
      if (instance.servesBreakfast case final value?) 'serves_breakfast': value,
      if (instance.servesBrunch case final value?) 'serves_brunch': value,
      if (instance.servesDinner case final value?) 'serves_dinner': value,
      if (instance.servesLunch case final value?) 'serves_lunch': value,
      if (instance.servesVegetarianFood case final value?)
        'serves_vegetarian_food': value,
      if (instance.servesWine case final value?) 'serves_wine': value,
      if (instance.takeout case final value?) 'takeout': value,
      if (instance.types case final value?) 'types': value,
      if (instance.url case final value?) 'url': value,
      if (instance.userRatingsTotal case final value?)
        'user_ratings_total': value,
      if (instance.utcOffset case final value?) 'utc_offset': value,
      if (instance.vicinity case final value?) 'vicinity': value,
      if (instance.website case final value?) 'website': value,
      if (instance.wheelchairAccessibleEntrance case final value?)
        'wheelchair_accessible_entrance': value,
    };

const _$BusinessStatusEnumMap = {
  BusinessStatus.operational: 'OPERATIONAL',
  BusinessStatus.closedTemporarily: 'CLOSED_TEMPORARILY',
  BusinessStatus.closedPermanently: 'CLOSED_PERMANENTLY',
};

PlaceOpeningHours _$PlaceOpeningHoursFromJson(Map<String, dynamic> json) =>
    PlaceOpeningHours(
      openNow: json['open_now'] as bool?,
      periods: (json['periods'] as List<dynamic>?)
          ?.map((e) =>
              PlaceOpeningHoursPeriod.fromJson(e as Map<String, dynamic>))
          .toList(),
      specialDays: (json['special_days'] as List<dynamic>?)
          ?.map((e) => PlaceSpecialDay.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['type'] as String?,
      weekdayText: (json['weekday_text'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PlaceOpeningHoursToJson(PlaceOpeningHours instance) =>
    <String, dynamic>{
      if (instance.openNow case final value?) 'open_now': value,
      if (instance.periods case final value?) 'periods': value,
      if (instance.specialDays case final value?) 'special_days': value,
      if (instance.type case final value?) 'type': value,
      if (instance.weekdayText case final value?) 'weekday_text': value,
    };

PlaceOpeningHoursPeriodDetail _$PlaceOpeningHoursPeriodDetailFromJson(
        Map<String, dynamic> json) =>
    PlaceOpeningHoursPeriodDetail(
      day: (json['day'] as num).toInt(),
      time: json['time'] as String,
      date: json['date'] as String?,
      truncated: json['truncated'] as bool?,
    );

Map<String, dynamic> _$PlaceOpeningHoursPeriodDetailToJson(
        PlaceOpeningHoursPeriodDetail instance) =>
    <String, dynamic>{
      'day': instance.day,
      'time': instance.time,
      if (instance.date case final value?) 'date': value,
      if (instance.truncated case final value?) 'truncated': value,
    };

PlaceOpeningHoursPeriod _$PlaceOpeningHoursPeriodFromJson(
        Map<String, dynamic> json) =>
    PlaceOpeningHoursPeriod(
      open: PlaceOpeningHoursPeriodDetail.fromJson(
          json['open'] as Map<String, dynamic>),
      close: json['close'] == null
          ? null
          : PlaceOpeningHoursPeriodDetail.fromJson(
              json['close'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlaceOpeningHoursPeriodToJson(
        PlaceOpeningHoursPeriod instance) =>
    <String, dynamic>{
      'open': instance.open,
      if (instance.close case final value?) 'close': value,
    };

PlaceSpecialDay _$PlaceSpecialDayFromJson(Map<String, dynamic> json) =>
    PlaceSpecialDay(
      date: json['date'] as String?,
      exceptionalHours: json['exceptional_hours'] as bool?,
    );

Map<String, dynamic> _$PlaceSpecialDayToJson(PlaceSpecialDay instance) =>
    <String, dynamic>{
      if (instance.date case final value?) 'date': value,
      if (instance.exceptionalHours case final value?)
        'exceptional_hours': value,
    };

Photo _$PhotoFromJson(Map<String, dynamic> json) => Photo(
      photoReference: json['photo_reference'] as String?,
      height: json['height'] as num?,
      width: json['width'] as num?,
      htmlAttributions: (json['html_attributions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
      if (instance.photoReference case final value?) 'photo_reference': value,
      if (instance.height case final value?) 'height': value,
      if (instance.width case final value?) 'width': value,
      if (instance.htmlAttributions case final value?)
        'html_attributions': value,
    };

AlternativeId _$AlternativeIdFromJson(Map<String, dynamic> json) =>
    AlternativeId(
      placeId: json['place_id'] as String,
      scope: json['scope'] as String,
    );

Map<String, dynamic> _$AlternativeIdToJson(AlternativeId instance) =>
    <String, dynamic>{
      'place_id': instance.placeId,
      'scope': instance.scope,
    };

PlaceEditorialSummary _$PlaceEditorialSummaryFromJson(
        Map<String, dynamic> json) =>
    PlaceEditorialSummary(
      language: json['language'] as String?,
      overview: json['overview'] as String?,
    );

Map<String, dynamic> _$PlaceEditorialSummaryToJson(
        PlaceEditorialSummary instance) =>
    <String, dynamic>{
      if (instance.language case final value?) 'language': value,
      if (instance.overview case final value?) 'overview': value,
    };

PlusCode _$PlusCodeFromJson(Map<String, dynamic> json) => PlusCode(
      globalCode: json['global_code'] as String?,
      compoundCode: json['compound_code'] as String?,
    );

Map<String, dynamic> _$PlusCodeToJson(PlusCode instance) => <String, dynamic>{
      if (instance.globalCode case final value?) 'global_code': value,
      if (instance.compoundCode case final value?) 'compound_code': value,
    };

PlacesDetailsResponse _$PlacesDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    PlacesDetailsResponse(
      status: $enumDecodeNullable(_$ResponseStatusEnumMap, json['status']),
      errorMessage: json['error_message'] as String?,
      result: json['result'] == null
          ? null
          : PlaceDetails.fromJson(json['result'] as Map<String, dynamic>),
      htmlAttributions: (json['html_attributions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$PlacesDetailsResponseToJson(
        PlacesDetailsResponse instance) =>
    <String, dynamic>{
      'status': _$ResponseStatusEnumMap[instance.status]!,
      if (instance.errorMessage case final value?) 'error_message': value,
      if (instance.result case final value?) 'result': value,
      if (instance.htmlAttributions case final value?)
        'html_attributions': value,
    };

Review _$ReviewFromJson(Map<String, dynamic> json) => Review(
      authorName: json['author_name'] as String,
      rating: json['rating'] as num,
      relativeTimeDescription: json['relative_time_description'] as String,
      time: json['time'] as num,
      authorUrl: json['author_url'] as String?,
      language: json['language'] as String?,
      originalLanguage: json['original_language'] as String?,
      profilePhotoUrl: json['profile_photo_url'] as String?,
      text: json['text'] as String?,
      translated: json['translated'] as bool?,
    );

Map<String, dynamic> _$ReviewToJson(Review instance) => <String, dynamic>{
      'author_name': instance.authorName,
      'rating': instance.rating,
      'relative_time_description': instance.relativeTimeDescription,
      'time': instance.time,
      if (instance.authorUrl case final value?) 'author_url': value,
      if (instance.language case final value?) 'language': value,
      if (instance.originalLanguage case final value?)
        'original_language': value,
      if (instance.profilePhotoUrl case final value?)
        'profile_photo_url': value,
      if (instance.text case final value?) 'text': value,
      if (instance.translated case final value?) 'translated': value,
    };

PlacesAutocompleteResponse _$PlacesAutocompleteResponseFromJson(
        Map<String, dynamic> json) =>
    PlacesAutocompleteResponse(
      status: $enumDecodeNullable(_$ResponseStatusEnumMap, json['status']),
      errorMessage: json['error_message'] as String?,
      predictions: (json['predictions'] as List<dynamic>?)
          ?.map((e) => Prediction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlacesAutocompleteResponseToJson(
        PlacesAutocompleteResponse instance) =>
    <String, dynamic>{
      'status': _$ResponseStatusEnumMap[instance.status]!,
      if (instance.errorMessage case final value?) 'error_message': value,
      if (instance.predictions case final value?) 'predictions': value,
    };

Prediction _$PredictionFromJson(Map<String, dynamic> json) => Prediction(
      description: json['description'] as String?,
      id: json['id'] as String?,
      terms: (json['terms'] as List<dynamic>?)
          ?.map((e) => Term.fromJson(e as Map<String, dynamic>))
          .toList(),
      distanceMeters: (json['distance_meters'] as num?)?.toInt(),
      placeId: json['place_id'] as String?,
      reference: json['reference'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      matchedSubstrings: (json['matched_substrings'] as List<dynamic>?)
          ?.map((e) => MatchedSubstring.fromJson(e as Map<String, dynamic>))
          .toList(),
      structuredFormatting: json['structured_formatting'] == null
          ? null
          : StructuredFormatting.fromJson(
              json['structured_formatting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PredictionToJson(Prediction instance) =>
    <String, dynamic>{
      if (instance.description case final value?) 'description': value,
      if (instance.id case final value?) 'id': value,
      if (instance.terms case final value?) 'terms': value,
      if (instance.distanceMeters case final value?) 'distance_meters': value,
      if (instance.placeId case final value?) 'place_id': value,
      if (instance.reference case final value?) 'reference': value,
      if (instance.types case final value?) 'types': value,
      if (instance.matchedSubstrings case final value?)
        'matched_substrings': value,
      if (instance.structuredFormatting case final value?)
        'structured_formatting': value,
    };

Term _$TermFromJson(Map<String, dynamic> json) => Term(
      offset: json['offset'] as num,
      value: json['value'] as String,
    );

Map<String, dynamic> _$TermToJson(Term instance) => <String, dynamic>{
      'offset': instance.offset,
      'value': instance.value,
    };

MatchedSubstring _$MatchedSubstringFromJson(Map<String, dynamic> json) =>
    MatchedSubstring(
      offset: json['offset'] as num,
      length: json['length'] as num,
    );

Map<String, dynamic> _$MatchedSubstringToJson(MatchedSubstring instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'length': instance.length,
    };

StructuredFormatting _$StructuredFormattingFromJson(
        Map<String, dynamic> json) =>
    StructuredFormatting(
      mainText: json['main_text'] as String?,
      mainTextMatchedSubstrings:
          (json['main_text_matched_substrings'] as List<dynamic>?)
              ?.map((e) => MatchedSubstring.fromJson(e as Map<String, dynamic>))
              .toList(),
      secondaryText: json['secondary_text'] as String?,
    );

Map<String, dynamic> _$StructuredFormattingToJson(
        StructuredFormatting instance) =>
    <String, dynamic>{
      if (instance.mainText case final value?) 'main_text': value,
      if (instance.mainTextMatchedSubstrings case final value?)
        'main_text_matched_substrings': value,
      if (instance.secondaryText case final value?) 'secondary_text': value,
    };
