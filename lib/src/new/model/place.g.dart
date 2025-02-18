// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PlaceCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Place(...).copyWith(id: 12, name: "My name")
  /// ````
  Place call({
    String? name,
    String? id,
    LocalizedText? displayName,
    List<PlaceType>? types,
    PlaceType? primaryType,
    LocalizedText? primaryTypeDisplayName,
    String? nationalPhoneNumber,
    String? internationalPhoneNumber,
    String? formattedAddress,
    String? shortFormattedAddress,
    List<AddressComponent>? addressComponents,
    PlusCode? plusCode,
    LatLng? location,
    Viewport? viewport,
    double? rating,
    String? googleMapsUri,
    String? websiteUri,
    List<Review>? reviews,
    OpeningHours? regularOpeningHours,
    List<Photo>? photos,
    String? adrFormatAddress,
    BusinessStatus? businessStatus,
    PriceLevel? priceLevel,
    List<Attribution>? attributions,
    String? iconMaskBaseUri,
    String? iconBackgroundColor,
    OpeningHours? currentOpeningHours,
    OpeningHours? currentSecondaryOpeningHours,
    OpeningHours? regularSecondaryOpeningHours,
    LocalizedText? editorialSummary,
    PaymentOptions? paymentOptions,
    ParkingOptions? parkingOptions,
    List<SubDestination>? subDestinations,
    FuelOptions? fuelOptions,
    EVChargeOptions? evChargeOptions,
    GenerativeSummary? generativeSummary,
    AreaSummary? areaSummary,
    List<ContainingPlace>? containingPlaces,
    AddressDescriptor? addressDescriptor,
    GoogleMapsLinks? googleMapsLinks,
    PriceRange? priceRange,
    int? utcOffsetMinutes,
    int? userRatingCount,
    bool? takeout,
    bool? delivery,
    bool? dineIn,
    bool? curbsidePickup,
    bool? reservable,
    bool? servesBreakfast,
    bool? servesLunch,
    bool? servesDinner,
    bool? servesBeer,
    bool? servesWine,
    bool? servesBrunch,
    bool? servesVegetarianFood,
    bool? outdoorSeating,
    bool? liveMusic,
    bool? menuForChildren,
    bool? servesCocktails,
    bool? servesDessert,
    bool? servesCoffee,
    bool? goodForChildren,
    bool? allowsDogs,
    bool? restroom,
    bool? goodForGroups,
    bool? goodForWatchingSports,
    AccessibilityOptions? accessibilityOptions,
    bool? pureServiceAreaBusiness,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPlace.copyWith(...)`.
class _$PlaceCWProxyImpl implements _$PlaceCWProxy {
  const _$PlaceCWProxyImpl(this._value);

  final Place _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// Place(...).copyWith(id: 12, name: "My name")
  /// ````
  Place call({
    Object? name = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? displayName = const $CopyWithPlaceholder(),
    Object? types = const $CopyWithPlaceholder(),
    Object? primaryType = const $CopyWithPlaceholder(),
    Object? primaryTypeDisplayName = const $CopyWithPlaceholder(),
    Object? nationalPhoneNumber = const $CopyWithPlaceholder(),
    Object? internationalPhoneNumber = const $CopyWithPlaceholder(),
    Object? formattedAddress = const $CopyWithPlaceholder(),
    Object? shortFormattedAddress = const $CopyWithPlaceholder(),
    Object? addressComponents = const $CopyWithPlaceholder(),
    Object? plusCode = const $CopyWithPlaceholder(),
    Object? location = const $CopyWithPlaceholder(),
    Object? viewport = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
    Object? googleMapsUri = const $CopyWithPlaceholder(),
    Object? websiteUri = const $CopyWithPlaceholder(),
    Object? reviews = const $CopyWithPlaceholder(),
    Object? regularOpeningHours = const $CopyWithPlaceholder(),
    Object? photos = const $CopyWithPlaceholder(),
    Object? adrFormatAddress = const $CopyWithPlaceholder(),
    Object? businessStatus = const $CopyWithPlaceholder(),
    Object? priceLevel = const $CopyWithPlaceholder(),
    Object? attributions = const $CopyWithPlaceholder(),
    Object? iconMaskBaseUri = const $CopyWithPlaceholder(),
    Object? iconBackgroundColor = const $CopyWithPlaceholder(),
    Object? currentOpeningHours = const $CopyWithPlaceholder(),
    Object? currentSecondaryOpeningHours = const $CopyWithPlaceholder(),
    Object? regularSecondaryOpeningHours = const $CopyWithPlaceholder(),
    Object? editorialSummary = const $CopyWithPlaceholder(),
    Object? paymentOptions = const $CopyWithPlaceholder(),
    Object? parkingOptions = const $CopyWithPlaceholder(),
    Object? subDestinations = const $CopyWithPlaceholder(),
    Object? fuelOptions = const $CopyWithPlaceholder(),
    Object? evChargeOptions = const $CopyWithPlaceholder(),
    Object? generativeSummary = const $CopyWithPlaceholder(),
    Object? areaSummary = const $CopyWithPlaceholder(),
    Object? containingPlaces = const $CopyWithPlaceholder(),
    Object? addressDescriptor = const $CopyWithPlaceholder(),
    Object? googleMapsLinks = const $CopyWithPlaceholder(),
    Object? priceRange = const $CopyWithPlaceholder(),
    Object? utcOffsetMinutes = const $CopyWithPlaceholder(),
    Object? userRatingCount = const $CopyWithPlaceholder(),
    Object? takeout = const $CopyWithPlaceholder(),
    Object? delivery = const $CopyWithPlaceholder(),
    Object? dineIn = const $CopyWithPlaceholder(),
    Object? curbsidePickup = const $CopyWithPlaceholder(),
    Object? reservable = const $CopyWithPlaceholder(),
    Object? servesBreakfast = const $CopyWithPlaceholder(),
    Object? servesLunch = const $CopyWithPlaceholder(),
    Object? servesDinner = const $CopyWithPlaceholder(),
    Object? servesBeer = const $CopyWithPlaceholder(),
    Object? servesWine = const $CopyWithPlaceholder(),
    Object? servesBrunch = const $CopyWithPlaceholder(),
    Object? servesVegetarianFood = const $CopyWithPlaceholder(),
    Object? outdoorSeating = const $CopyWithPlaceholder(),
    Object? liveMusic = const $CopyWithPlaceholder(),
    Object? menuForChildren = const $CopyWithPlaceholder(),
    Object? servesCocktails = const $CopyWithPlaceholder(),
    Object? servesDessert = const $CopyWithPlaceholder(),
    Object? servesCoffee = const $CopyWithPlaceholder(),
    Object? goodForChildren = const $CopyWithPlaceholder(),
    Object? allowsDogs = const $CopyWithPlaceholder(),
    Object? restroom = const $CopyWithPlaceholder(),
    Object? goodForGroups = const $CopyWithPlaceholder(),
    Object? goodForWatchingSports = const $CopyWithPlaceholder(),
    Object? accessibilityOptions = const $CopyWithPlaceholder(),
    Object? pureServiceAreaBusiness = const $CopyWithPlaceholder(),
  }) {
    return Place(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      displayName: displayName == const $CopyWithPlaceholder()
          ? _value.displayName
          // ignore: cast_nullable_to_non_nullable
          : displayName as LocalizedText?,
      types: types == const $CopyWithPlaceholder()
          ? _value.types
          // ignore: cast_nullable_to_non_nullable
          : types as List<PlaceType>?,
      primaryType: primaryType == const $CopyWithPlaceholder()
          ? _value.primaryType
          // ignore: cast_nullable_to_non_nullable
          : primaryType as PlaceType?,
      primaryTypeDisplayName:
          primaryTypeDisplayName == const $CopyWithPlaceholder()
              ? _value.primaryTypeDisplayName
              // ignore: cast_nullable_to_non_nullable
              : primaryTypeDisplayName as LocalizedText?,
      nationalPhoneNumber: nationalPhoneNumber == const $CopyWithPlaceholder()
          ? _value.nationalPhoneNumber
          // ignore: cast_nullable_to_non_nullable
          : nationalPhoneNumber as String?,
      internationalPhoneNumber:
          internationalPhoneNumber == const $CopyWithPlaceholder()
              ? _value.internationalPhoneNumber
              // ignore: cast_nullable_to_non_nullable
              : internationalPhoneNumber as String?,
      formattedAddress: formattedAddress == const $CopyWithPlaceholder()
          ? _value.formattedAddress
          // ignore: cast_nullable_to_non_nullable
          : formattedAddress as String?,
      shortFormattedAddress:
          shortFormattedAddress == const $CopyWithPlaceholder()
              ? _value.shortFormattedAddress
              // ignore: cast_nullable_to_non_nullable
              : shortFormattedAddress as String?,
      addressComponents: addressComponents == const $CopyWithPlaceholder()
          ? _value.addressComponents
          // ignore: cast_nullable_to_non_nullable
          : addressComponents as List<AddressComponent>?,
      plusCode: plusCode == const $CopyWithPlaceholder()
          ? _value.plusCode
          // ignore: cast_nullable_to_non_nullable
          : plusCode as PlusCode?,
      location: location == const $CopyWithPlaceholder()
          ? _value.location
          // ignore: cast_nullable_to_non_nullable
          : location as LatLng?,
      viewport: viewport == const $CopyWithPlaceholder()
          ? _value.viewport
          // ignore: cast_nullable_to_non_nullable
          : viewport as Viewport?,
      rating: rating == const $CopyWithPlaceholder()
          ? _value.rating
          // ignore: cast_nullable_to_non_nullable
          : rating as double?,
      googleMapsUri: googleMapsUri == const $CopyWithPlaceholder()
          ? _value.googleMapsUri
          // ignore: cast_nullable_to_non_nullable
          : googleMapsUri as String?,
      websiteUri: websiteUri == const $CopyWithPlaceholder()
          ? _value.websiteUri
          // ignore: cast_nullable_to_non_nullable
          : websiteUri as String?,
      reviews: reviews == const $CopyWithPlaceholder()
          ? _value.reviews
          // ignore: cast_nullable_to_non_nullable
          : reviews as List<Review>?,
      regularOpeningHours: regularOpeningHours == const $CopyWithPlaceholder()
          ? _value.regularOpeningHours
          // ignore: cast_nullable_to_non_nullable
          : regularOpeningHours as OpeningHours?,
      photos: photos == const $CopyWithPlaceholder()
          ? _value.photos
          // ignore: cast_nullable_to_non_nullable
          : photos as List<Photo>?,
      adrFormatAddress: adrFormatAddress == const $CopyWithPlaceholder()
          ? _value.adrFormatAddress
          // ignore: cast_nullable_to_non_nullable
          : adrFormatAddress as String?,
      businessStatus: businessStatus == const $CopyWithPlaceholder()
          ? _value.businessStatus
          // ignore: cast_nullable_to_non_nullable
          : businessStatus as BusinessStatus?,
      priceLevel: priceLevel == const $CopyWithPlaceholder()
          ? _value.priceLevel
          // ignore: cast_nullable_to_non_nullable
          : priceLevel as PriceLevel?,
      attributions: attributions == const $CopyWithPlaceholder()
          ? _value.attributions
          // ignore: cast_nullable_to_non_nullable
          : attributions as List<Attribution>?,
      iconMaskBaseUri: iconMaskBaseUri == const $CopyWithPlaceholder()
          ? _value.iconMaskBaseUri
          // ignore: cast_nullable_to_non_nullable
          : iconMaskBaseUri as String?,
      iconBackgroundColor: iconBackgroundColor == const $CopyWithPlaceholder()
          ? _value.iconBackgroundColor
          // ignore: cast_nullable_to_non_nullable
          : iconBackgroundColor as String?,
      currentOpeningHours: currentOpeningHours == const $CopyWithPlaceholder()
          ? _value.currentOpeningHours
          // ignore: cast_nullable_to_non_nullable
          : currentOpeningHours as OpeningHours?,
      currentSecondaryOpeningHours:
          currentSecondaryOpeningHours == const $CopyWithPlaceholder()
              ? _value.currentSecondaryOpeningHours
              // ignore: cast_nullable_to_non_nullable
              : currentSecondaryOpeningHours as OpeningHours?,
      regularSecondaryOpeningHours:
          regularSecondaryOpeningHours == const $CopyWithPlaceholder()
              ? _value.regularSecondaryOpeningHours
              // ignore: cast_nullable_to_non_nullable
              : regularSecondaryOpeningHours as OpeningHours?,
      editorialSummary: editorialSummary == const $CopyWithPlaceholder()
          ? _value.editorialSummary
          // ignore: cast_nullable_to_non_nullable
          : editorialSummary as LocalizedText?,
      paymentOptions: paymentOptions == const $CopyWithPlaceholder()
          ? _value.paymentOptions
          // ignore: cast_nullable_to_non_nullable
          : paymentOptions as PaymentOptions?,
      parkingOptions: parkingOptions == const $CopyWithPlaceholder()
          ? _value.parkingOptions
          // ignore: cast_nullable_to_non_nullable
          : parkingOptions as ParkingOptions?,
      subDestinations: subDestinations == const $CopyWithPlaceholder()
          ? _value.subDestinations
          // ignore: cast_nullable_to_non_nullable
          : subDestinations as List<SubDestination>?,
      fuelOptions: fuelOptions == const $CopyWithPlaceholder()
          ? _value.fuelOptions
          // ignore: cast_nullable_to_non_nullable
          : fuelOptions as FuelOptions?,
      evChargeOptions: evChargeOptions == const $CopyWithPlaceholder()
          ? _value.evChargeOptions
          // ignore: cast_nullable_to_non_nullable
          : evChargeOptions as EVChargeOptions?,
      generativeSummary: generativeSummary == const $CopyWithPlaceholder()
          ? _value.generativeSummary
          // ignore: cast_nullable_to_non_nullable
          : generativeSummary as GenerativeSummary?,
      areaSummary: areaSummary == const $CopyWithPlaceholder()
          ? _value.areaSummary
          // ignore: cast_nullable_to_non_nullable
          : areaSummary as AreaSummary?,
      containingPlaces: containingPlaces == const $CopyWithPlaceholder()
          ? _value.containingPlaces
          // ignore: cast_nullable_to_non_nullable
          : containingPlaces as List<ContainingPlace>?,
      addressDescriptor: addressDescriptor == const $CopyWithPlaceholder()
          ? _value.addressDescriptor
          // ignore: cast_nullable_to_non_nullable
          : addressDescriptor as AddressDescriptor?,
      googleMapsLinks: googleMapsLinks == const $CopyWithPlaceholder()
          ? _value.googleMapsLinks
          // ignore: cast_nullable_to_non_nullable
          : googleMapsLinks as GoogleMapsLinks?,
      priceRange: priceRange == const $CopyWithPlaceholder()
          ? _value.priceRange
          // ignore: cast_nullable_to_non_nullable
          : priceRange as PriceRange?,
      utcOffsetMinutes: utcOffsetMinutes == const $CopyWithPlaceholder()
          ? _value.utcOffsetMinutes
          // ignore: cast_nullable_to_non_nullable
          : utcOffsetMinutes as int?,
      userRatingCount: userRatingCount == const $CopyWithPlaceholder()
          ? _value.userRatingCount
          // ignore: cast_nullable_to_non_nullable
          : userRatingCount as int?,
      takeout: takeout == const $CopyWithPlaceholder()
          ? _value.takeout
          // ignore: cast_nullable_to_non_nullable
          : takeout as bool?,
      delivery: delivery == const $CopyWithPlaceholder()
          ? _value.delivery
          // ignore: cast_nullable_to_non_nullable
          : delivery as bool?,
      dineIn: dineIn == const $CopyWithPlaceholder()
          ? _value.dineIn
          // ignore: cast_nullable_to_non_nullable
          : dineIn as bool?,
      curbsidePickup: curbsidePickup == const $CopyWithPlaceholder()
          ? _value.curbsidePickup
          // ignore: cast_nullable_to_non_nullable
          : curbsidePickup as bool?,
      reservable: reservable == const $CopyWithPlaceholder()
          ? _value.reservable
          // ignore: cast_nullable_to_non_nullable
          : reservable as bool?,
      servesBreakfast: servesBreakfast == const $CopyWithPlaceholder()
          ? _value.servesBreakfast
          // ignore: cast_nullable_to_non_nullable
          : servesBreakfast as bool?,
      servesLunch: servesLunch == const $CopyWithPlaceholder()
          ? _value.servesLunch
          // ignore: cast_nullable_to_non_nullable
          : servesLunch as bool?,
      servesDinner: servesDinner == const $CopyWithPlaceholder()
          ? _value.servesDinner
          // ignore: cast_nullable_to_non_nullable
          : servesDinner as bool?,
      servesBeer: servesBeer == const $CopyWithPlaceholder()
          ? _value.servesBeer
          // ignore: cast_nullable_to_non_nullable
          : servesBeer as bool?,
      servesWine: servesWine == const $CopyWithPlaceholder()
          ? _value.servesWine
          // ignore: cast_nullable_to_non_nullable
          : servesWine as bool?,
      servesBrunch: servesBrunch == const $CopyWithPlaceholder()
          ? _value.servesBrunch
          // ignore: cast_nullable_to_non_nullable
          : servesBrunch as bool?,
      servesVegetarianFood: servesVegetarianFood == const $CopyWithPlaceholder()
          ? _value.servesVegetarianFood
          // ignore: cast_nullable_to_non_nullable
          : servesVegetarianFood as bool?,
      outdoorSeating: outdoorSeating == const $CopyWithPlaceholder()
          ? _value.outdoorSeating
          // ignore: cast_nullable_to_non_nullable
          : outdoorSeating as bool?,
      liveMusic: liveMusic == const $CopyWithPlaceholder()
          ? _value.liveMusic
          // ignore: cast_nullable_to_non_nullable
          : liveMusic as bool?,
      menuForChildren: menuForChildren == const $CopyWithPlaceholder()
          ? _value.menuForChildren
          // ignore: cast_nullable_to_non_nullable
          : menuForChildren as bool?,
      servesCocktails: servesCocktails == const $CopyWithPlaceholder()
          ? _value.servesCocktails
          // ignore: cast_nullable_to_non_nullable
          : servesCocktails as bool?,
      servesDessert: servesDessert == const $CopyWithPlaceholder()
          ? _value.servesDessert
          // ignore: cast_nullable_to_non_nullable
          : servesDessert as bool?,
      servesCoffee: servesCoffee == const $CopyWithPlaceholder()
          ? _value.servesCoffee
          // ignore: cast_nullable_to_non_nullable
          : servesCoffee as bool?,
      goodForChildren: goodForChildren == const $CopyWithPlaceholder()
          ? _value.goodForChildren
          // ignore: cast_nullable_to_non_nullable
          : goodForChildren as bool?,
      allowsDogs: allowsDogs == const $CopyWithPlaceholder()
          ? _value.allowsDogs
          // ignore: cast_nullable_to_non_nullable
          : allowsDogs as bool?,
      restroom: restroom == const $CopyWithPlaceholder()
          ? _value.restroom
          // ignore: cast_nullable_to_non_nullable
          : restroom as bool?,
      goodForGroups: goodForGroups == const $CopyWithPlaceholder()
          ? _value.goodForGroups
          // ignore: cast_nullable_to_non_nullable
          : goodForGroups as bool?,
      goodForWatchingSports:
          goodForWatchingSports == const $CopyWithPlaceholder()
              ? _value.goodForWatchingSports
              // ignore: cast_nullable_to_non_nullable
              : goodForWatchingSports as bool?,
      accessibilityOptions: accessibilityOptions == const $CopyWithPlaceholder()
          ? _value.accessibilityOptions
          // ignore: cast_nullable_to_non_nullable
          : accessibilityOptions as AccessibilityOptions?,
      pureServiceAreaBusiness:
          pureServiceAreaBusiness == const $CopyWithPlaceholder()
              ? _value.pureServiceAreaBusiness
              // ignore: cast_nullable_to_non_nullable
              : pureServiceAreaBusiness as bool?,
    );
  }
}

extension $PlaceCopyWith on Place {
  /// Returns a callable class that can be used as follows: `instanceOfPlace.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$PlaceCWProxy get copyWith => _$PlaceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Place _$PlaceFromJson(Map<String, dynamic> json) => Place(
      name: json['name'] as String?,
      id: json['id'] as String?,
      displayName: json['displayName'] == null
          ? null
          : LocalizedText.fromJson(json['displayName'] as Map<String, dynamic>),
      types: PlaceType.fromJsonList(json['types'] as List?),
      primaryType: $enumDecodeNullable(_$PlaceTypeEnumMap, json['primaryType'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
      primaryTypeDisplayName: json['primaryTypeDisplayName'] == null
          ? null
          : LocalizedText.fromJson(
              json['primaryTypeDisplayName'] as Map<String, dynamic>),
      nationalPhoneNumber: json['nationalPhoneNumber'] as String?,
      internationalPhoneNumber: json['internationalPhoneNumber'] as String?,
      formattedAddress: json['formattedAddress'] as String?,
      shortFormattedAddress: json['shortFormattedAddress'] as String?,
      addressComponents: (json['addressComponents'] as List<dynamic>?)
          ?.map((e) => AddressComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      plusCode: json['plusCode'] == null
          ? null
          : PlusCode.fromJson(json['plusCode'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : LatLng.fromJson(json['location'] as Map<String, dynamic>),
      viewport: json['viewport'] == null
          ? null
          : Viewport.fromJson(json['viewport'] as Map<String, dynamic>),
      rating: (json['rating'] as num?)?.toDouble(),
      googleMapsUri: json['googleMapsUri'] as String?,
      websiteUri: json['websiteUri'] as String?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      regularOpeningHours: json['regularOpeningHours'] == null
          ? null
          : OpeningHours.fromJson(
              json['regularOpeningHours'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
      adrFormatAddress: json['adrFormatAddress'] as String?,
      businessStatus: $enumDecodeNullable(
          _$BusinessStatusEnumMap, json['businessStatus'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
      priceLevel: $enumDecodeNullable(_$PriceLevelEnumMap, json['priceLevel'],
          unknownValue: JsonKey.nullForUndefinedEnumValue),
      attributions: (json['attributions'] as List<dynamic>?)
          ?.map((e) => Attribution.fromJson(e as Map<String, dynamic>))
          .toList(),
      iconMaskBaseUri: json['iconMaskBaseUri'] as String?,
      iconBackgroundColor: json['iconBackgroundColor'] as String?,
      currentOpeningHours: json['currentOpeningHours'] == null
          ? null
          : OpeningHours.fromJson(
              json['currentOpeningHours'] as Map<String, dynamic>),
      currentSecondaryOpeningHours: json['currentSecondaryOpeningHours'] == null
          ? null
          : OpeningHours.fromJson(
              json['currentSecondaryOpeningHours'] as Map<String, dynamic>),
      regularSecondaryOpeningHours: json['regularSecondaryOpeningHours'] == null
          ? null
          : OpeningHours.fromJson(
              json['regularSecondaryOpeningHours'] as Map<String, dynamic>),
      editorialSummary: json['editorialSummary'] == null
          ? null
          : LocalizedText.fromJson(
              json['editorialSummary'] as Map<String, dynamic>),
      paymentOptions: json['paymentOptions'] == null
          ? null
          : PaymentOptions.fromJson(
              json['paymentOptions'] as Map<String, dynamic>),
      parkingOptions: json['parkingOptions'] == null
          ? null
          : ParkingOptions.fromJson(
              json['parkingOptions'] as Map<String, dynamic>),
      subDestinations: (json['subDestinations'] as List<dynamic>?)
          ?.map((e) => SubDestination.fromJson(e as Map<String, dynamic>))
          .toList(),
      fuelOptions: json['fuelOptions'] == null
          ? null
          : FuelOptions.fromJson(json['fuelOptions'] as Map<String, dynamic>),
      evChargeOptions: json['evChargeOptions'] == null
          ? null
          : EVChargeOptions.fromJson(
              json['evChargeOptions'] as Map<String, dynamic>),
      generativeSummary: json['generativeSummary'] == null
          ? null
          : GenerativeSummary.fromJson(
              json['generativeSummary'] as Map<String, dynamic>),
      areaSummary: json['areaSummary'] == null
          ? null
          : AreaSummary.fromJson(json['areaSummary'] as Map<String, dynamic>),
      containingPlaces: (json['containingPlaces'] as List<dynamic>?)
          ?.map((e) => ContainingPlace.fromJson(e as Map<String, dynamic>))
          .toList(),
      addressDescriptor: json['addressDescriptor'] == null
          ? null
          : AddressDescriptor.fromJson(
              json['addressDescriptor'] as Map<String, dynamic>),
      googleMapsLinks: json['googleMapsLinks'] == null
          ? null
          : GoogleMapsLinks.fromJson(
              json['googleMapsLinks'] as Map<String, dynamic>),
      priceRange: json['priceRange'] == null
          ? null
          : PriceRange.fromJson(json['priceRange'] as Map<String, dynamic>),
      utcOffsetMinutes: (json['utcOffsetMinutes'] as num?)?.toInt(),
      userRatingCount: (json['userRatingCount'] as num?)?.toInt(),
      takeout: json['takeout'] as bool?,
      delivery: json['delivery'] as bool?,
      dineIn: json['dineIn'] as bool?,
      curbsidePickup: json['curbsidePickup'] as bool?,
      reservable: json['reservable'] as bool?,
      servesBreakfast: json['servesBreakfast'] as bool?,
      servesLunch: json['servesLunch'] as bool?,
      servesDinner: json['servesDinner'] as bool?,
      servesBeer: json['servesBeer'] as bool?,
      servesWine: json['servesWine'] as bool?,
      servesBrunch: json['servesBrunch'] as bool?,
      servesVegetarianFood: json['servesVegetarianFood'] as bool?,
      outdoorSeating: json['outdoorSeating'] as bool?,
      liveMusic: json['liveMusic'] as bool?,
      menuForChildren: json['menuForChildren'] as bool?,
      servesCocktails: json['servesCocktails'] as bool?,
      servesDessert: json['servesDessert'] as bool?,
      servesCoffee: json['servesCoffee'] as bool?,
      goodForChildren: json['goodForChildren'] as bool?,
      allowsDogs: json['allowsDogs'] as bool?,
      restroom: json['restroom'] as bool?,
      goodForGroups: json['goodForGroups'] as bool?,
      goodForWatchingSports: json['goodForWatchingSports'] as bool?,
      accessibilityOptions: json['accessibilityOptions'] == null
          ? null
          : AccessibilityOptions.fromJson(
              json['accessibilityOptions'] as Map<String, dynamic>),
      pureServiceAreaBusiness: json['pureServiceAreaBusiness'] as bool?,
    );

Map<String, dynamic> _$PlaceToJson(Place instance) => <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.id case final value?) 'id': value,
      if (instance.displayName case final value?) 'displayName': value,
      if (instance.types?.map((e) => _$PlaceTypeEnumMap[e]!).toList()
          case final value?)
        'types': value,
      if (_$PlaceTypeEnumMap[instance.primaryType] case final value?)
        'primaryType': value,
      if (instance.primaryTypeDisplayName case final value?)
        'primaryTypeDisplayName': value,
      if (instance.nationalPhoneNumber case final value?)
        'nationalPhoneNumber': value,
      if (instance.internationalPhoneNumber case final value?)
        'internationalPhoneNumber': value,
      if (instance.formattedAddress case final value?)
        'formattedAddress': value,
      if (instance.shortFormattedAddress case final value?)
        'shortFormattedAddress': value,
      if (instance.addressComponents case final value?)
        'addressComponents': value,
      if (instance.plusCode case final value?) 'plusCode': value,
      if (instance.location case final value?) 'location': value,
      if (instance.viewport case final value?) 'viewport': value,
      if (instance.rating case final value?) 'rating': value,
      if (instance.googleMapsUri case final value?) 'googleMapsUri': value,
      if (instance.websiteUri case final value?) 'websiteUri': value,
      if (instance.reviews case final value?) 'reviews': value,
      if (instance.regularOpeningHours case final value?)
        'regularOpeningHours': value,
      if (instance.photos case final value?) 'photos': value,
      if (instance.adrFormatAddress case final value?)
        'adrFormatAddress': value,
      if (_$BusinessStatusEnumMap[instance.businessStatus] case final value?)
        'businessStatus': value,
      if (_$PriceLevelEnumMap[instance.priceLevel] case final value?)
        'priceLevel': value,
      if (instance.attributions case final value?) 'attributions': value,
      if (instance.iconMaskBaseUri case final value?) 'iconMaskBaseUri': value,
      if (instance.iconBackgroundColor case final value?)
        'iconBackgroundColor': value,
      if (instance.currentOpeningHours case final value?)
        'currentOpeningHours': value,
      if (instance.currentSecondaryOpeningHours case final value?)
        'currentSecondaryOpeningHours': value,
      if (instance.regularSecondaryOpeningHours case final value?)
        'regularSecondaryOpeningHours': value,
      if (instance.editorialSummary case final value?)
        'editorialSummary': value,
      if (instance.paymentOptions case final value?) 'paymentOptions': value,
      if (instance.parkingOptions case final value?) 'parkingOptions': value,
      if (instance.subDestinations case final value?) 'subDestinations': value,
      if (instance.fuelOptions case final value?) 'fuelOptions': value,
      if (instance.evChargeOptions case final value?) 'evChargeOptions': value,
      if (instance.generativeSummary case final value?)
        'generativeSummary': value,
      if (instance.areaSummary case final value?) 'areaSummary': value,
      if (instance.containingPlaces case final value?)
        'containingPlaces': value,
      if (instance.addressDescriptor case final value?)
        'addressDescriptor': value,
      if (instance.googleMapsLinks case final value?) 'googleMapsLinks': value,
      if (instance.priceRange case final value?) 'priceRange': value,
      if (instance.utcOffsetMinutes case final value?)
        'utcOffsetMinutes': value,
      if (instance.userRatingCount case final value?) 'userRatingCount': value,
      if (instance.takeout case final value?) 'takeout': value,
      if (instance.delivery case final value?) 'delivery': value,
      if (instance.dineIn case final value?) 'dineIn': value,
      if (instance.curbsidePickup case final value?) 'curbsidePickup': value,
      if (instance.reservable case final value?) 'reservable': value,
      if (instance.servesBreakfast case final value?) 'servesBreakfast': value,
      if (instance.servesLunch case final value?) 'servesLunch': value,
      if (instance.servesDinner case final value?) 'servesDinner': value,
      if (instance.servesBeer case final value?) 'servesBeer': value,
      if (instance.servesWine case final value?) 'servesWine': value,
      if (instance.servesBrunch case final value?) 'servesBrunch': value,
      if (instance.servesVegetarianFood case final value?)
        'servesVegetarianFood': value,
      if (instance.outdoorSeating case final value?) 'outdoorSeating': value,
      if (instance.liveMusic case final value?) 'liveMusic': value,
      if (instance.menuForChildren case final value?) 'menuForChildren': value,
      if (instance.servesCocktails case final value?) 'servesCocktails': value,
      if (instance.servesDessert case final value?) 'servesDessert': value,
      if (instance.servesCoffee case final value?) 'servesCoffee': value,
      if (instance.goodForChildren case final value?) 'goodForChildren': value,
      if (instance.allowsDogs case final value?) 'allowsDogs': value,
      if (instance.restroom case final value?) 'restroom': value,
      if (instance.goodForGroups case final value?) 'goodForGroups': value,
      if (instance.goodForWatchingSports case final value?)
        'goodForWatchingSports': value,
      if (instance.accessibilityOptions case final value?)
        'accessibilityOptions': value,
      if (instance.pureServiceAreaBusiness case final value?)
        'pureServiceAreaBusiness': value,
    };

const _$PlaceTypeEnumMap = {
  PlaceType.carDealer: 'car_dealer',
  PlaceType.carRental: 'car_rental',
  PlaceType.carRepair: 'car_repair',
  PlaceType.carWash: 'car_wash',
  PlaceType.electricVehicleChargingStation: 'electric_vehicle_charging_station',
  PlaceType.gasStation: 'gas_station',
  PlaceType.parking: 'parking',
  PlaceType.restStop: 'rest_stop',
  PlaceType.corporateOffice: 'corporate_office',
  PlaceType.farm: 'farm',
  PlaceType.ranch: 'ranch',
  PlaceType.artGallery: 'art_gallery',
  PlaceType.artStudio: 'art_studio',
  PlaceType.auditorium: 'auditorium',
  PlaceType.culturalLandmark: 'cultural_landmark',
  PlaceType.historicalPlace: 'historical_place',
  PlaceType.monument: 'monument',
  PlaceType.museum: 'museum',
  PlaceType.performingArtsTheater: 'performing_arts_theater',
  PlaceType.sculpture: 'sculpture',
  PlaceType.library: 'library',
  PlaceType.preschool: 'preschool',
  PlaceType.primarySchool: 'primary_school',
  PlaceType.school: 'school',
  PlaceType.secondarySchool: 'secondary_school',
  PlaceType.university: 'university',
  PlaceType.adventureSportsCenter: 'adventure_sports_center',
  PlaceType.amphitheatre: 'amphitheatre',
  PlaceType.amusementCenter: 'amusement_center',
  PlaceType.amusementPark: 'amusement_park',
  PlaceType.aquarium: 'aquarium',
  PlaceType.banquetHall: 'banquet_hall',
  PlaceType.barbecueArea: 'barbecue_area',
  PlaceType.botanicalGarden: 'botanical_garden',
  PlaceType.bowlingAlley: 'bowling_alley',
  PlaceType.casino: 'casino',
  PlaceType.childrensCamp: 'childrens_camp',
  PlaceType.comedyClub: 'comedy_club',
  PlaceType.communityCenter: 'community_center',
  PlaceType.concertHall: 'concert_hall',
  PlaceType.conventionCenter: 'convention_center',
  PlaceType.culturalCenter: 'cultural_center',
  PlaceType.cyclingPark: 'cycling_park',
  PlaceType.danceHall: 'dance_hall',
  PlaceType.dogPark: 'dog_park',
  PlaceType.eventVenue: 'event_venue',
  PlaceType.ferrisWheel: 'ferris_wheel',
  PlaceType.garden: 'garden',
  PlaceType.hikingArea: 'hiking_area',
  PlaceType.historicalLandmark: 'historical_landmark',
  PlaceType.internetCafe: 'internet_cafe',
  PlaceType.karaoke: 'karaoke',
  PlaceType.marina: 'marina',
  PlaceType.movieRental: 'movie_rental',
  PlaceType.movieTheater: 'movie_theater',
  PlaceType.nationalPark: 'national_park',
  PlaceType.nightClub: 'night_club',
  PlaceType.observationDeck: 'observation_deck',
  PlaceType.offRoadingArea: 'off_roading_area',
  PlaceType.operaHouse: 'opera_house',
  PlaceType.park: 'park',
  PlaceType.philharmonicHall: 'philharmonic_hall',
  PlaceType.picnicGround: 'picnic_ground',
  PlaceType.planetarium: 'planetarium',
  PlaceType.plaza: 'plaza',
  PlaceType.rollerCoaster: 'roller_coaster',
  PlaceType.skateboardPark: 'skateboard_park',
  PlaceType.statePark: 'state_park',
  PlaceType.touristAttraction: 'tourist_attraction',
  PlaceType.videoArcade: 'video_arcade',
  PlaceType.visitorCenter: 'visitor_center',
  PlaceType.waterPark: 'water_park',
  PlaceType.weddingVenue: 'wedding_venue',
  PlaceType.wildlifePark: 'wildlife_park',
  PlaceType.wildlifeRefuge: 'wildlife_refuge',
  PlaceType.zoo: 'zoo',
  PlaceType.publicBath: 'public_bath',
  PlaceType.publicBathroom: 'public_bathroom',
  PlaceType.stable: 'stable',
  PlaceType.accounting: 'accounting',
  PlaceType.atm: 'atm',
  PlaceType.bank: 'bank',
  PlaceType.acaiShop: 'acai_shop',
  PlaceType.afghaniRestaurant: 'afghani_restaurant',
  PlaceType.africanRestaurant: 'african_restaurant',
  PlaceType.americanRestaurant: 'american_restaurant',
  PlaceType.asianRestaurant: 'asian_restaurant',
  PlaceType.bagelShop: 'bagel_shop',
  PlaceType.bakery: 'bakery',
  PlaceType.bar: 'bar',
  PlaceType.barAndGrill: 'bar_and_grill',
  PlaceType.barbecueRestaurant: 'barbecue_restaurant',
  PlaceType.brazilianRestaurant: 'brazilian_restaurant',
  PlaceType.breakfastRestaurant: 'breakfast_restaurant',
  PlaceType.brunchRestaurant: 'brunch_restaurant',
  PlaceType.buffetRestaurant: 'buffet_restaurant',
  PlaceType.cafe: 'cafe',
  PlaceType.cafeteria: 'cafeteria',
  PlaceType.candyStore: 'candy_store',
  PlaceType.catCafe: 'cat_cafe',
  PlaceType.chineseRestaurant: 'chinese_restaurant',
  PlaceType.chocolateFactory: 'chocolate_factory',
  PlaceType.chocolateShop: 'chocolate_shop',
  PlaceType.coffeeShop: 'coffee_shop',
  PlaceType.confectionery: 'confectionery',
  PlaceType.deli: 'deli',
  PlaceType.dessertRestaurant: 'dessert_restaurant',
  PlaceType.dessertShop: 'dessert_shop',
  PlaceType.diner: 'diner',
  PlaceType.dogCafe: 'dog_cafe',
  PlaceType.donutShop: 'donut_shop',
  PlaceType.fastFoodRestaurant: 'fast_food_restaurant',
  PlaceType.fineDiningRestaurant: 'fine_dining_restaurant',
  PlaceType.foodCourt: 'food_court',
  PlaceType.frenchRestaurant: 'french_restaurant',
  PlaceType.greekRestaurant: 'greek_restaurant',
  PlaceType.hamburgerRestaurant: 'hamburger_restaurant',
  PlaceType.iceCreamShop: 'ice_cream_shop',
  PlaceType.indianRestaurant: 'indian_restaurant',
  PlaceType.indonesianRestaurant: 'indonesian_restaurant',
  PlaceType.italianRestaurant: 'italian_restaurant',
  PlaceType.japaneseRestaurant: 'japanese_restaurant',
  PlaceType.juiceShop: 'juice_shop',
  PlaceType.koreanRestaurant: 'korean_restaurant',
  PlaceType.lebaneseRestaurant: 'lebanese_restaurant',
  PlaceType.mealDelivery: 'meal_delivery',
  PlaceType.mealTakeaway: 'meal_takeaway',
  PlaceType.mediterraneanRestaurant: 'mediterranean_restaurant',
  PlaceType.mexicanRestaurant: 'mexican_restaurant',
  PlaceType.middleEasternRestaurant: 'middle_eastern_restaurant',
  PlaceType.pizzaRestaurant: 'pizza_restaurant',
  PlaceType.pub: 'pub',
  PlaceType.ramenRestaurant: 'ramen_restaurant',
  PlaceType.restaurant: 'restaurant',
  PlaceType.sandwichShop: 'sandwich_shop',
  PlaceType.seafoodRestaurant: 'seafood_restaurant',
  PlaceType.spanishRestaurant: 'spanish_restaurant',
  PlaceType.steakHouse: 'steak_house',
  PlaceType.sushiRestaurant: 'sushi_restaurant',
  PlaceType.teaHouse: 'tea_house',
  PlaceType.thaiRestaurant: 'thai_restaurant',
  PlaceType.turkishRestaurant: 'turkish_restaurant',
  PlaceType.veganRestaurant: 'vegan_restaurant',
  PlaceType.vegetarianRestaurant: 'vegetarian_restaurant',
  PlaceType.vietnameseRestaurant: 'vietnamese_restaurant',
  PlaceType.wineBar: 'wine_bar',
  PlaceType.administrativeAreaLevel1: 'administrative_area_level1',
  PlaceType.administrativeAreaLevel2: 'administrative_area_level2',
  PlaceType.country: 'country',
  PlaceType.locality: 'locality',
  PlaceType.postalCode: 'postal_code',
  PlaceType.schoolDistrict: 'school_district',
  PlaceType.ityHall: 'ity_hall',
  PlaceType.courthouse: 'courthouse',
  PlaceType.embassy: 'embassy',
  PlaceType.fireStation: 'fire_station',
  PlaceType.governmentOffice: 'government_office',
  PlaceType.localGovernmentOffice: 'local_government_office',
  PlaceType.neighborhoodPoliceStation: 'neighborhood_police_station',
  PlaceType.police: 'police',
  PlaceType.postOffice: 'post_office',
  PlaceType.chiropractor: 'chiropractor',
  PlaceType.dentalClinic: 'dental_clinic',
  PlaceType.dentist: 'dentist',
  PlaceType.doctor: 'doctor',
  PlaceType.drugstore: 'drugstore',
  PlaceType.hospital: 'hospital',
  PlaceType.massage: 'massage',
  PlaceType.medicalLab: 'medical_lab',
  PlaceType.pharmacy: 'pharmacy',
  PlaceType.physiotherapist: 'physiotherapist',
  PlaceType.sauna: 'sauna',
  PlaceType.skinCareClinic: 'skin_care_clinic',
  PlaceType.spa: 'spa',
  PlaceType.tanningStudio: 'tanning_studio',
  PlaceType.wellnessCenter: 'wellness_center',
  PlaceType.yogaStudio: 'yoga_studio',
  PlaceType.apartmentBuilding: 'apartment_building',
  PlaceType.apartmentComplex: 'apartment_complex',
  PlaceType.condominiumComplex: 'condominium_complex',
  PlaceType.housingComplex: 'housing_complex',
  PlaceType.bedAndBreakfast: 'bed_and_breakfast',
  PlaceType.budgetJapaneseInn: 'budget_japanese_inn',
  PlaceType.campground: 'campground',
  PlaceType.campingCabin: 'camping_cabin',
  PlaceType.cottage: 'cottage',
  PlaceType.extendedStayHotel: 'extended_stay_hotel',
  PlaceType.farmstay: 'farmstay',
  PlaceType.guestHouse: 'guest_house',
  PlaceType.hostel: 'hostel',
  PlaceType.hotel: 'hotel',
  PlaceType.inn: 'inn',
  PlaceType.japaneseInn: 'japanese_inn',
  PlaceType.lodging: 'lodging',
  PlaceType.mobileHomePark: 'mobile_home_park',
  PlaceType.motel: 'motel',
  PlaceType.privateGuestRoom: 'private_guest_room',
  PlaceType.resortHotel: 'resort_hotel',
  PlaceType.rvPark: 'rv_park',
  PlaceType.beach: 'beach',
  PlaceType.church: 'church',
  PlaceType.hinduTemple: 'hindu_temple',
  PlaceType.mosque: 'mosque',
  PlaceType.synagogue: 'synagogue',
  PlaceType.astrologer: 'astrologer',
  PlaceType.barberShop: 'barber_shop',
  PlaceType.beautician: 'beautician',
  PlaceType.beautySalon: 'beauty_salon',
  PlaceType.bodyArtService: 'body_art_service',
  PlaceType.cateringService: 'catering_service',
  PlaceType.cemetery: 'cemetery',
  PlaceType.childCareAgency: 'child_care_agency',
  PlaceType.consultant: 'consultant',
  PlaceType.courierService: 'courier_service',
  PlaceType.electrician: 'electrician',
  PlaceType.florist: 'florist',
  PlaceType.foodDelivery: 'food_delivery',
  PlaceType.footCare: 'foot_care',
  PlaceType.funeralHome: 'funeral_home',
  PlaceType.hairCare: 'hair_care',
  PlaceType.hairSalon: 'hair_salon',
  PlaceType.insuranceAgency: 'insurance_agency',
  PlaceType.laundry: 'laundry',
  PlaceType.lawyer: 'lawyer',
  PlaceType.locksmith: 'locksmith',
  PlaceType.makeupArtist: 'makeup_artist',
  PlaceType.movingCompany: 'moving_company',
  PlaceType.nailSalon: 'nail_salon',
  PlaceType.painter: 'painter',
  PlaceType.plumber: 'plumber',
  PlaceType.psychic: 'psychic',
  PlaceType.realEstateAgency: 'real_estate_agency',
  PlaceType.roofingContractor: 'roofing_contractor',
  PlaceType.storage: 'storage',
  PlaceType.summerCampOrganizer: 'summer_camp_organizer',
  PlaceType.tailor: 'tailor',
  PlaceType.telecommunicationsServiceProvider:
      'telecommunications_service_provider',
  PlaceType.tourAgency: 'tour_agency',
  PlaceType.touristInformationCenter: 'tourist_information_center',
  PlaceType.travelAgency: 'travel_agency',
  PlaceType.veterinaryCare: 'veterinary_care',
  PlaceType.asianGroceryStore: 'asian_grocery_store',
  PlaceType.autoPartsStore: 'auto_parts_store',
  PlaceType.bicycleStore: 'bicycle_store',
  PlaceType.bookStore: 'book_store',
  PlaceType.butcherShop: 'butcher_shop',
  PlaceType.cellPhoneStore: 'cell_phone_store',
  PlaceType.clothingStore: 'clothing_store',
  PlaceType.convenienceStore: 'convenience_store',
  PlaceType.departmentStore: 'department_store',
  PlaceType.discountStore: 'discount_store',
  PlaceType.electronicsStore: 'electronics_store',
  PlaceType.foodStore: 'food_store',
  PlaceType.furnitureStore: 'furniture_store',
  PlaceType.giftShop: 'gift_shop',
  PlaceType.groceryStore: 'grocery_store',
  PlaceType.hardwareStore: 'hardware_store',
  PlaceType.homeGoodsStore: 'home_goods_store',
  PlaceType.homeImprovementStore: 'home_improvement_store',
  PlaceType.jewelryStore: 'jewelry_store',
  PlaceType.liquorStore: 'liquor_store',
  PlaceType.market: 'market',
  PlaceType.petStore: 'pet_store',
  PlaceType.shoeStore: 'shoe_store',
  PlaceType.shoppingMall: 'shopping_mall',
  PlaceType.sportingGoodsStore: 'sporting_goods_store',
  PlaceType.store: 'store',
  PlaceType.supermarket: 'supermarket',
  PlaceType.warehouseStore: 'warehouse_store',
  PlaceType.wholesaler: 'wholesaler',
  PlaceType.arena: 'arena',
  PlaceType.athleticField: 'athletic_field',
  PlaceType.fishingCharter: 'fishing_charter',
  PlaceType.fishingPond: 'fishing_pond',
  PlaceType.fitnessCenter: 'fitness_center',
  PlaceType.golfCourse: 'golf_course',
  PlaceType.gym: 'gym',
  PlaceType.iceSkatingRink: 'ice_skating_rink',
  PlaceType.playground: 'playground',
  PlaceType.skiResort: 'ski_resort',
  PlaceType.sportsActivityLocation: 'sports_activity_location',
  PlaceType.sportsClub: 'sports_club',
  PlaceType.sportsCoaching: 'sports_coaching',
  PlaceType.sportsComplex: 'sports_complex',
  PlaceType.stadium: 'stadium',
  PlaceType.swimmingPool: 'swimming_pool',
  PlaceType.airport: 'airport',
  PlaceType.airstrip: 'airstrip',
  PlaceType.busStation: 'bus_station',
  PlaceType.busStop: 'bus_stop',
  PlaceType.ferryTerminal: 'ferry_terminal',
  PlaceType.heliport: 'heliport',
  PlaceType.internationalAirport: 'international_airport',
  PlaceType.lightRailStation: 'light_rail_station',
  PlaceType.parkAndRide: 'park_and_ride',
  PlaceType.subwayStation: 'subway_station',
  PlaceType.taxiStand: 'taxi_stand',
  PlaceType.trainStation: 'train_station',
  PlaceType.transitDepot: 'transit_depot',
  PlaceType.transitStation: 'transit_station',
  PlaceType.truckStop: 'truck_stop',
  PlaceType.administrativeAreaLevel3: 'administrative_area_level3',
  PlaceType.administrativeAreaLevel4: 'administrative_area_level4',
  PlaceType.administrativeAreaLevel5: 'administrative_area_level5',
  PlaceType.administrativeAreaLevel6: 'administrative_area_level6',
  PlaceType.administrativeAreaLevel7: 'administrative_area_level7',
  PlaceType.archipelago: 'archipelago',
  PlaceType.colloquialArea: 'colloquial_area',
  PlaceType.continent: 'continent',
  PlaceType.establishment: 'establishment',
  PlaceType.finance: 'finance',
  PlaceType.floor: 'floor',
  PlaceType.food: 'food',
  PlaceType.generalContractor: 'general_contractor',
  PlaceType.geocode: 'geocode',
  PlaceType.health: 'health',
  PlaceType.intersection: 'intersection',
  PlaceType.landmark: 'landmark',
  PlaceType.naturalFeature: 'natural_feature',
  PlaceType.neighborhood: 'neighborhood',
  PlaceType.placeOfWorship: 'place_of_worship',
  PlaceType.plusCod: 'plus_cod',
  PlaceType.pointOfInterest: 'point_of_interest',
  PlaceType.political: 'political',
  PlaceType.postBox: 'post_box',
  PlaceType.postalCodePrefix: 'postal_code_prefix',
  PlaceType.postalCodeSuffix: 'postal_code_suffix',
  PlaceType.postalTown: 'postal_town',
  PlaceType.premise: 'premise',
  PlaceType.room: 'room',
  PlaceType.route: 'route',
  PlaceType.streetAddress: 'street_address',
  PlaceType.streetNumber: 'street_number',
  PlaceType.sublocality: 'sublocality',
  PlaceType.sublocalityLevel1: 'sublocality_level1',
  PlaceType.sublocalityLevel2: 'sublocality_level2',
  PlaceType.sublocalityLevel3: 'sublocality_level3',
  PlaceType.sublocalityLevel4: 'sublocality_level4',
  PlaceType.sublocalityLevel5: 'sublocality_level5',
  PlaceType.subpremise: 'subpremise',
  PlaceType.townSquare: 'town_square',
};

const _$BusinessStatusEnumMap = {
  BusinessStatus.businessStatusUnspecified: 'BUSINESS_STATUS_UNSPECIFIED',
  BusinessStatus.operational: 'OPERATIONAL',
  BusinessStatus.closedTemporarily: 'CLOSED_TEMPORARILY',
  BusinessStatus.closedPermanently: 'CLOSED_PERMANENTLY',
};

const _$PriceLevelEnumMap = {
  PriceLevel.unspecified: 'PRICE_LEVEL_UNSPECIFIED',
  PriceLevel.free: 'PRICE_LEVEL_FREE',
  PriceLevel.inexpensive: 'PRICE_LEVEL_INEXPENSIVE',
  PriceLevel.moderate: 'PRICE_LEVEL_MODERATE',
  PriceLevel.expensive: 'PRICE_LEVEL_EXPENSIVE',
  PriceLevel.veryExpensive: 'PRICE_LEVEL_VERY_EXPENSIVE',
};
