import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'place_details.g.dart';

@JsonSerializable()
@CopyWith()
class PlaceDetails extends Jsonable<PlaceDetails> {
  final String? name;
  final String? id;
  final List<String>? types;
  final String? nationalPhoneNumber;
  final String? internationalPhoneNumber;
  final String? formattedAddress;
  final List<AddressComponents>? addressComponents;
  final PlusCode? plusCode;
  final Location? location;
  final Viewport? viewport;
  final double? rating;
  final String? googleMapsUri;
  final String? websiteUri;
  final RegularOpeningHours? regularOpeningHours;
  final int? utcOffsetMinutes;
  final String? adrFormatAddress;
  final String? businessStatus;
  final int? userRatingCount;
  final String? iconMaskBaseUri;
  final String? iconBackgroundColor;
  final DisplayName? displayName;
  final PrimaryTypeDisplayName? primaryTypeDisplayName;
  final CurrentOpeningHours? currentOpeningHours;
  final String? primaryType;
  final String? shortFormattedAddress;
  final EditorialSummary? editorialSummary;
  final List<Reviews>? reviews;
  final List<Photos>? photos;
  final AccessibilityOptions? accessibilityOptions;
  final bool? pureServiceAreaBusiness;
  final AddressDescriptor? addressDescriptor;
  final GoogleMapsLinks? googleMapsLinks;

  PlaceDetails({
    this.name,
    this.id,
    this.types,
    this.nationalPhoneNumber,
    this.internationalPhoneNumber,
    this.formattedAddress,
    this.addressComponents,
    this.plusCode,
    this.location,
    this.viewport,
    this.rating,
    this.googleMapsUri,
    this.websiteUri,
    this.regularOpeningHours,
    this.utcOffsetMinutes,
    this.adrFormatAddress,
    this.businessStatus,
    this.userRatingCount,
    this.iconMaskBaseUri,
    this.iconBackgroundColor,
    this.displayName,
    this.primaryTypeDisplayName,
    this.currentOpeningHours,
    this.primaryType,
    this.shortFormattedAddress,
    this.editorialSummary,
    this.reviews,
    this.photos,
    this.accessibilityOptions,
    this.pureServiceAreaBusiness,
    this.addressDescriptor,
    this.googleMapsLinks,
  });

  List<String> toFieldsMask({String? parentKey}) {
    List<String> fields = [];
    final map = toJson();
    fields.addAll(_searchInMap(parentKey: parentKey, map: map));
    return fields;
  }

  List<String> _searchInMap({String? parentKey, Map map = const {}}) {
    parentKey = parentKey != null
        ? !parentKey.endsWith('.')
            ? '$parentKey.'
            : parentKey
        : '';
    List<String> fields = [];
    for (final MapEntry(key: key, value: value) in map.entries) {
      fields.addAll(_checkValue(key: '$parentKey$key', value: value));
    }
    return fields;
  }

  List<String> _searchInList({String? parentKey, List list = const []}) {
    parentKey = parentKey != null
        ? !parentKey.endsWith('.')
            ? '$parentKey.'
            : parentKey
        : '';
    List<String> fields = [];
    for (final value in list) {
      fields.addAll(_checkValue(key: parentKey, value: value));
    }
    return fields;
  }

  List<String> _checkValue({required String key, dynamic value}) {
    List<String> fields = [];
    if (value != null) {
      if (value is Jsonable) {
        fields.addAll(_searchInMap(parentKey: key, map: value.toJson()));
      } else if (value is Map) {
        final results = _searchInMap(parentKey: key, map: value);
        if (results.isNotEmpty) {
          fields.addAll(results);
        } else {
          fields.add(key);
        }
      } else if (value is List) {
        final results = _searchInList(parentKey: key, list: value);
        if (results.isNotEmpty) {
          fields.addAll(results);
        } else {
          fields.add(key);
        }
      } else {
        fields.add(key);
      }
    }
    return fields;
  }

  factory PlaceDetails.fromJson(Map<String, dynamic> json) {
    return _$PlaceDetailsFromJson(json);
  }

  @override
  PlaceDetails? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? PlaceDetails.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceDetailsToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class AddressComponents extends Jsonable<AddressComponents> {
  final String? longText;
  final String? shortText;
  final List<String>? types;
  final String? languageCode;

  AddressComponents({
    this.longText,
    this.shortText,
    this.types,
    this.languageCode,
  });

  factory AddressComponents.fromJson(Map<String, dynamic> json) {
    return _$AddressComponentsFromJson(json);
  }

  @override
  AddressComponents? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? AddressComponents.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$AddressComponentsToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class PlusCode extends Jsonable<PlusCode> {
  final String? globalCode;
  final String? compoundCode;

  PlusCode({
    this.globalCode,
    this.compoundCode,
  });

  factory PlusCode.fromJson(Map<String, dynamic> json) {
    return _$PlusCodeFromJson(json);
  }

  @override
  PlusCode? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? PlusCode.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$PlusCodeToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class Location extends Jsonable<Location> {
  final double? latitude;
  final double? longitude;

  Location({
    this.latitude,
    this.longitude,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return _$LocationFromJson(json);
  }

  @override
  Location? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Location.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$LocationToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class Viewport extends Jsonable<Viewport> {
  final Low? low;
  final High? high;

  Viewport({
    this.low,
    this.high,
  });

  factory Viewport.fromJson(Map<String, dynamic> json) {
    return _$ViewportFromJson(json);
  }

  @override
  Viewport? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Viewport.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$ViewportToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class Low extends Jsonable<Low> {
  final double? latitude;
  final double? longitude;

  Low({
    this.latitude,
    this.longitude,
  });

  factory Low.fromJson(Map<String, dynamic> json) {
    return _$LowFromJson(json);
  }

  @override
  Low? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Low.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$LowToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class High extends Jsonable<High> {
  final double? latitude;
  final double? longitude;

  High({
    this.latitude,
    this.longitude,
  });

  factory High.fromJson(Map<String, dynamic> json) {
    return _$HighFromJson(json);
  }

  @override
  High? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? High.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$HighToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class RegularOpeningHours extends Jsonable<RegularOpeningHours> {
  final bool? openNow;
  final List<Periods>? periods;
  final List<String>? weekdayDescriptions;
  final String? nextCloseTime;

  RegularOpeningHours({
    this.openNow,
    this.periods,
    this.weekdayDescriptions,
    this.nextCloseTime,
  });

  factory RegularOpeningHours.fromJson(Map<String, dynamic> json) {
    return _$RegularOpeningHoursFromJson(json);
  }

  @override
  RegularOpeningHours? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? RegularOpeningHours.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$RegularOpeningHoursToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class Periods extends Jsonable<Periods> {
  final Open? open;
  final Close? close;

  Periods({
    this.open,
    this.close,
  });

  factory Periods.fromJson(Map<String, dynamic> json) {
    return _$PeriodsFromJson(json);
  }

  @override
  Periods? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Periods.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$PeriodsToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class Open extends Jsonable<Open> {
  final int? day;
  final int? hour;
  final int? minute;

  Open({
    this.day,
    this.hour,
    this.minute,
  });

  factory Open.fromJson(Map<String, dynamic> json) {
    return _$OpenFromJson(json);
  }

  @override
  Open? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Open.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$OpenToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class Close extends Jsonable<Close> {
  final int? day;
  final int? hour;
  final int? minute;

  Close({
    this.day,
    this.hour,
    this.minute,
  });

  factory Close.fromJson(Map<String, dynamic> json) {
    return _$CloseFromJson(json);
  }

  @override
  Close? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Close.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$CloseToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class DisplayName extends Jsonable<DisplayName> {
  final String? text;
  final String? languageCode;

  DisplayName({
    this.text,
    this.languageCode,
  });

  factory DisplayName.fromJson(Map<String, dynamic> json) {
    return _$DisplayNameFromJson(json);
  }

  @override
  DisplayName? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? DisplayName.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$DisplayNameToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class PrimaryTypeDisplayName extends Jsonable<PrimaryTypeDisplayName> {
  final String? text;
  final String? languageCode;

  PrimaryTypeDisplayName({
    this.text,
    this.languageCode,
  });

  factory PrimaryTypeDisplayName.fromJson(Map<String, dynamic> json) {
    return _$PrimaryTypeDisplayNameFromJson(json);
  }

  @override
  PrimaryTypeDisplayName? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? PrimaryTypeDisplayName.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$PrimaryTypeDisplayNameToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class CurrentOpeningHours extends Jsonable<CurrentOpeningHours> {
  final bool? openNow;
  final List<Periods>? periods;
  final List<String>? weekdayDescriptions;
  final String? nextCloseTime;

  CurrentOpeningHours({
    this.openNow,
    this.periods,
    this.weekdayDescriptions,
    this.nextCloseTime,
  });

  factory CurrentOpeningHours.fromJson(Map<String, dynamic> json) {
    return _$CurrentOpeningHoursFromJson(json);
  }

  @override
  CurrentOpeningHours? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? CurrentOpeningHours.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$CurrentOpeningHoursToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class Date extends Jsonable<Date> {
  final int? year;
  final int? month;
  final int? day;

  Date({
    this.year,
    this.month,
    this.day,
  });

  factory Date.fromJson(Map<String, dynamic> json) {
    return _$DateFromJson(json);
  }

  @override
  Date? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Date.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$DateToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class EditorialSummary extends Jsonable<EditorialSummary> {
  final String? text;
  final String? languageCode;

  EditorialSummary({
    this.text,
    this.languageCode,
  });

  factory EditorialSummary.fromJson(Map<String, dynamic> json) {
    return _$EditorialSummaryFromJson(json);
  }

  @override
  EditorialSummary? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? EditorialSummary.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$EditorialSummaryToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class Reviews extends Jsonable<Reviews> {
  final String? name;
  final String? relativePublishTimeDescription;
  final int? rating;
  final Text? text;
  final OriginalText? originalText;
  final AuthorAttribution? authorAttribution;
  final String? publishTime;
  final String? flagContentUri;
  final String? googleMapsUri;

  Reviews({
    this.name,
    this.relativePublishTimeDescription,
    this.rating,
    this.text,
    this.originalText,
    this.authorAttribution,
    this.publishTime,
    this.flagContentUri,
    this.googleMapsUri,
  });

  factory Reviews.fromJson(Map<String, dynamic> json) {
    return _$ReviewsFromJson(json);
  }

  @override
  Reviews? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Reviews.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$ReviewsToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class Text extends Jsonable<Text> {
  final String? text;
  final String? languageCode;

  Text({
    this.text,
    this.languageCode,
  });

  factory Text.fromJson(Map<String, dynamic> json) {
    return _$TextFromJson(json);
  }

  @override
  Text? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Text.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$TextToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class OriginalText extends Jsonable<OriginalText> {
  final String? text;
  final String? languageCode;

  OriginalText({
    this.text,
    this.languageCode,
  });

  factory OriginalText.fromJson(Map<String, dynamic> json) {
    return _$OriginalTextFromJson(json);
  }

  @override
  OriginalText? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? OriginalText.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$OriginalTextToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class AuthorAttribution extends Jsonable<AuthorAttribution> {
  final String? displayName;
  final String? uri;
  final String? photoUri;

  AuthorAttribution({
    this.displayName,
    this.uri,
    this.photoUri,
  });

  factory AuthorAttribution.fromJson(Map<String, dynamic> json) {
    return _$AuthorAttributionFromJson(json);
  }

  @override
  AuthorAttribution? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? AuthorAttribution.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$AuthorAttributionToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class Photos extends Jsonable<Photos> {
  final String? name;
  final int? widthPx;
  final int? heightPx;
  final List<AuthorAttributions>? authorAttributions;
  final String? flagContentUri;
  final String? googleMapsUri;

  Photos({
    this.name,
    this.widthPx,
    this.heightPx,
    this.authorAttributions,
    this.flagContentUri,
    this.googleMapsUri,
  });

  factory Photos.fromJson(Map<String, dynamic> json) {
    return _$PhotosFromJson(json);
  }

  @override
  Photos? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Photos.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$PhotosToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class AuthorAttributions extends Jsonable<AuthorAttributions> {
  final String? displayName;
  final String? uri;
  final String? photoUri;

  AuthorAttributions({
    this.displayName,
    this.uri,
    this.photoUri,
  });

  factory AuthorAttributions.fromJson(Map<String, dynamic> json) {
    return _$AuthorAttributionsFromJson(json);
  }

  @override
  AuthorAttributions? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? AuthorAttributions.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$AuthorAttributionsToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class AccessibilityOptions extends Jsonable<AccessibilityOptions> {
  final bool? wheelchairAccessibleParking;
  final bool? wheelchairAccessibleEntrance;

  AccessibilityOptions({
    this.wheelchairAccessibleParking,
    this.wheelchairAccessibleEntrance,
  });

  factory AccessibilityOptions.fromJson(Map<String, dynamic> json) {
    return _$AccessibilityOptionsFromJson(json);
  }

  @override
  AccessibilityOptions? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? AccessibilityOptions.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$AccessibilityOptionsToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class AddressDescriptor extends Jsonable<AddressDescriptor> {
  final List<Landmarks>? landmarks;

  AddressDescriptor({
    this.landmarks,
  });

  factory AddressDescriptor.fromJson(Map<String, dynamic> json) {
    return _$AddressDescriptorFromJson(json);
  }

  @override
  AddressDescriptor? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? AddressDescriptor.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$AddressDescriptorToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class Landmarks extends Jsonable<Landmarks> {
  final String? name;
  final String? placeId;
  final DisplayName? displayName;
  final List<String>? types;
  final double? straightLineDistanceMeters;
  final double? travelDistanceMeters;

  Landmarks({
    this.name,
    this.placeId,
    this.displayName,
    this.types,
    this.straightLineDistanceMeters,
    this.travelDistanceMeters,
  });

  factory Landmarks.fromJson(Map<String, dynamic> json) {
    return _$LandmarksFromJson(json);
  }

  @override
  Landmarks? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Landmarks.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$LandmarksToJson(this);
  }
}

@JsonSerializable()
@CopyWith()
class GoogleMapsLinks extends Jsonable<GoogleMapsLinks> {
  final String? directionsUri;
  final String? placeUri;
  final String? writeAReviewUri;
  final String? reviewsUri;
  final String? photosUri;

  GoogleMapsLinks({
    this.directionsUri,
    this.placeUri,
    this.writeAReviewUri,
    this.reviewsUri,
    this.photosUri,
  });

  factory GoogleMapsLinks.fromJson(Map<String, dynamic> json) {
    return _$GoogleMapsLinksFromJson(json);
  }

  @override
  GoogleMapsLinks? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? GoogleMapsLinks.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$GoogleMapsLinksToJson(this);
  }
}
