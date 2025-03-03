import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/model/accessibility_options.dart';
import 'package:google_maps_apis/src/new/model/address_component.dart';
import 'package:google_maps_apis/src/new/model/address_descriptor.dart';
import 'package:google_maps_apis/src/new/model/area_summary.dart';
import 'package:google_maps_apis/src/new/model/attribution.dart';
import 'package:google_maps_apis/src/new/model/containing_place.dart';
import 'package:google_maps_apis/src/new/model/ev_charge_options.dart';
import 'package:google_maps_apis/src/new/model/fuel_options.dart';
import 'package:google_maps_apis/src/new/model/generative_summary.dart';
import 'package:google_maps_apis/src/new/model/google_maps_links.dart';
import 'package:google_maps_apis/src/new/model/lat_lng.dart';
import 'package:google_maps_apis/src/new/model/localized_text.dart';
import 'package:google_maps_apis/src/new/model/opening_hours.dart';
import 'package:google_maps_apis/src/new/model/parking_options.dart';
import 'package:google_maps_apis/src/new/model/payment_options.dart';
import 'package:google_maps_apis/src/new/model/photo.dart';
import 'package:google_maps_apis/src/new/model/plus_code.dart';
import 'package:google_maps_apis/src/new/model/price_range.dart';
import 'package:google_maps_apis/src/new/model/review.dart';
import 'package:google_maps_apis/src/new/model/sub_destination.dart';
import 'package:google_maps_apis/src/new/model/viewport.dart';
import 'package:google_maps_apis/src/new/enums/business_status.dart';
import 'package:google_maps_apis/src/new/enums/place_type.dart';
import 'package:google_maps_apis/src/new/enums/price_level.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'place.g.dart';

/// All the information representing a Place.
///
/// Documentation:https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#Place
@JsonSerializable()
@CopyWith()
class Place extends Jsonable<Place> {
  /// This Place's resource name, in places/{placeId} format. Can be used to
  /// look up the Place.
  final String? name;

  /// The unique identifier of a place.
  final String? id;

  /// The localized name of the place, suitable as a short human-readable
  /// description. For example, "Google Sydney", "Starbucks", "Pyrmont", etc.
  final LocalizedText? displayName;

  /// A set of type tags for this result. For example, "political" and "locality".
  /// For the complete list of possible values, see Table A and Table B at
  /// https://developers.google.com/maps/documentation/places/web-service/place-types
  ///
  /// Also represented by [PlaceType] enum.
  @JsonKey(fromJson: PlaceType.fromJsonList)
  final List<PlaceType>? types;

  /// The primary type of the given result. This type must one of the Places API
  /// supported types. For example, "restaurant", "cafe", "airport", etc.
  /// A place can only have a single primary type. For the complete list of
  /// possible values, see Table A and Table B at
  /// https://developers.google.com/maps/documentation/places/web-service/place-types
  ///
  /// Also represented by [PlaceType] enum.
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final PlaceType? primaryType;

  /// The display name of the primary type, localized to the request language if
  /// applicable. For the complete list of possible values, see Table A and Table B at
  /// https://developers.google.com/maps/documentation/places/web-service/place-types
  final LocalizedText? primaryTypeDisplayName;

  /// A human-readable phone number for the place, in national format.
  final String? nationalPhoneNumber;

  /// A human-readable phone number for the place, in international format.
  final String? internationalPhoneNumber;

  /// A full, human-readable address for this place.
  final String? formattedAddress;

  /// A short, human-readable address for this place.
  final String? shortFormattedAddress;

  /// Repeated components for each locality level. Note the following facts about
  /// the addressComponents[] array: - The array of address components may contain
  /// more components than the formattedAddress. - The array does not necessarily
  /// include all the political entities that contain an address, apart from those
  /// included in the formattedAddress. To retrieve all the political entities
  /// that contain a specific address, you should use reverse geocoding, passing
  /// the latitude/longitude of the address as a parameter to the request.
  /// - The format of the response is not guaranteed to remain the same between
  /// requests. In particular, the number of addressComponents varies based on
  /// the address requested and can change over time for the same address.
  /// A component can change position in the array. The type of the component
  /// can change. A particular component may be missing in a later response.
  final List<AddressComponent>? addressComponents;

  /// Plus code of the place location lat/long.
  final PlusCode? plusCode;

  /// The position of this place.
  final LatLng? location;

  /// A viewport suitable for displaying the place on an average-sized map.
  /// This viewport should not be used as the physical boundary or the service
  /// area of the business.
  final Viewport? viewport;

  /// A rating between 1.0 and 5.0, based on user reviews of this place.
  final double? rating;

  /// A URL providing more information about this place.
  final String? googleMapsUri;

  /// The authoritative website for this place, e.g. a business' homepage.
  /// Note that for places that are part of a chain (e.g. an IKEA store), this
  /// will usually be the website for the individual store, not the overall chain.
  final String? websiteUri;

  /// List of reviews about this place, sorted by relevance.
  /// A maximum of 5 reviews can be returned.
  final List<Review>? reviews;

  /// The regular hours of operation. Note that if a place is always open (24 hours),
  /// the close field will not be set. Clients can rely on always open (24 hours)
  /// being represented as an [open][OpeningHours.Period.open] period containing
  /// [day][Point.day] with value 0, [hour][Point.hour] with value 0, and
  /// [minute][Point.minute] with value 0.
  final OpeningHours? regularOpeningHours;

  /// Information (including references) about photos of this place.
  /// A maximum of 10 photos can be returned.
  final List<Photo>? photos;

  /// The place's address in adr microformat: http://microformats.org/wiki/adr.
  final String? adrFormatAddress;

  /// The business status for the place.
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final BusinessStatus? businessStatus;

  /// Price level of the place.
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final PriceLevel? priceLevel;

  /// A set of data provider that must be shown with this result.
  final List<Attribution>? attributions;

  /// A truncated URL to an icon mask. User can access different icon type by
  /// appending type suffix to the end (eg, ".svg" or ".png").
  final String? iconMaskBaseUri;

  /// Background color for icon_mask in hex format, e.g. #909CE1.
  final String? iconBackgroundColor;

  /// The hours of operation for the next seven days (including today). The time
  /// period starts at midnight on the date of the request and ends at 11:59 pm
  /// six days later. This field includes the specialDays subfield of all hours,
  /// set for dates that have exceptional hours.
  final OpeningHours? currentOpeningHours;

  /// Contains an array of entries for the next seven days including information
  /// about secondary hours of a business. Secondary hours are different from a
  /// business's main hours. For example, a restaurant can specify drive through
  /// hours or delivery hours as its secondary hours. This field populates the type
  /// subfield, which draws from a predefined list of opening hours types
  /// (such as DRIVE_THROUGH, PICKUP, or TAKEOUT) based on the types of the place.
  /// This field includes the specialDays subfield of all hours, set for dates
  /// that have exceptional hours.
  final List<OpeningHours>? currentSecondaryOpeningHours;

  /// Contains an array of entries for information about regular secondary hours
  /// of a business. Secondary hours are different from a business's main hours.
  /// For example, a restaurant can specify drive through hours or delivery hours
  /// as its secondary hours. This field populates the type subfield, which draws
  /// from a predefined list of opening hours types (such as DRIVE_THROUGH, PICKUP, or TAKEOUT)
  /// based on the types of the place.
  final List<OpeningHours>? regularSecondaryOpeningHours;

  /// Contains a summary of the place. A summary is comprised of a textual overview,
  /// and also includes the language code for these if applicable. Summary text
  /// must be presented as-is and can not be modified or altered.
  final LocalizedText? editorialSummary;

  /// Payment options the place accepts. If a payment option data is not available,
  /// the payment option field will be unset.
  final PaymentOptions? paymentOptions;

  /// Options of parking provided by the place.
  final ParkingOptions? parkingOptions;

  /// A list of sub destinations related to the place.
  final List<SubDestination>? subDestinations;

  /// The most recent information about fuel options in a gas station.
  /// This information is updated regularly.
  final FuelOptions? fuelOptions;

  /// Information of ev charging options.
  final EVChargeOptions? evChargeOptions;

  /// Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details.
  ///
  /// AI-generated summary of the place.
  final GenerativeSummary? generativeSummary;

  /// Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details.
  ///
  /// AI-generated summary of the area that the place is in.
  final AreaSummary? areaSummary;

  /// List of places in which the current place is located.
  final List<ContainingPlace>? containingPlaces;

  /// The address descriptor of the place. Address descriptors include additional
  /// information that help describe a location using landmarks and areas.
  /// See address descriptor regional coverage in https://developers.google.com/maps/documentation/geocoding/address-descriptors/coverage.
  final AddressDescriptor? addressDescriptor;

  /// Links to trigger different Google Maps actions.
  final GoogleMapsLinks? googleMapsLinks;

  /// The price range associated with a Place.
  final PriceRange? priceRange;

  /// Number of minutes this place's timezone is currently offset from UTC.
  /// This is expressed in minutes to support timezones that are offset by
  /// fractions of an hour, e.g. X hours and 15 minutes.
  final int? utcOffsetMinutes;

  /// The total number of reviews (with or without text) for this place.
  final int? userRatingCount;

  /// Specifies if the business supports takeout.
  final bool? takeout;

  /// Specifies if the business supports delivery.
  final bool? delivery;

  /// Specifies if the business supports indoor or outdoor seating options.
  final bool? dineIn;

  /// Specifies if the business supports curbside pickup.
  final bool? curbsidePickup;

  /// Specifies if the place supports reservations.
  final bool? reservable;

  /// Specifies if the place serves breakfast.
  final bool? servesBreakfast;

  /// Specifies if the place serves lunch.
  final bool? servesLunch;

  /// Specifies if the place serves dinner.
  final bool? servesDinner;

  /// Specifies if the place serves beer.
  final bool? servesBeer;

  /// Specifies if the place serves wine.
  final bool? servesWine;

  /// Specifies if the place serves brunch.
  final bool? servesBrunch;

  /// Specifies if the place serves vegetarian food.
  final bool? servesVegetarianFood;

  /// Place provides outdoor seating.
  final bool? outdoorSeating;

  /// Place provides live music.
  final bool? liveMusic;

  /// Place has a children's menu.
  final bool? menuForChildren;

  /// Place serves cocktails.
  final bool? servesCocktails;

  /// Place serves dessert.
  final bool? servesDessert;

  /// Place serves coffee.
  final bool? servesCoffee;

  /// Place is good for children.
  final bool? goodForChildren;

  /// Place allows dogs.
  final bool? allowsDogs;

  /// Place has restroom.
  final bool? restroom;

  /// Place accommodates groups.
  final bool? goodForGroups;

  /// Place is suitable for watching sports.
  final bool? goodForWatchingSports;

  /// Information about the accessibility options a place offers.
  final AccessibilityOptions? accessibilityOptions;

  /// Indicates whether the place is a pure service area business. Pure service
  /// area business is a business that visits or delivers to customers directly
  /// but does not serve customers at their business address. For example,
  /// businesses like cleaning services or plumbers. Those businesses may not
  /// have a physical address or location on Google Maps.
  final bool? pureServiceAreaBusiness;

  Place({
    this.name,
    this.id,
    this.displayName,
    this.types,
    this.primaryType,
    this.primaryTypeDisplayName,
    this.nationalPhoneNumber,
    this.internationalPhoneNumber,
    this.formattedAddress,
    this.shortFormattedAddress,
    this.addressComponents,
    this.plusCode,
    this.location,
    this.viewport,
    this.rating,
    this.googleMapsUri,
    this.websiteUri,
    this.reviews,
    this.regularOpeningHours,
    this.photos,
    this.adrFormatAddress,
    this.businessStatus,
    this.priceLevel,
    this.attributions,
    this.iconMaskBaseUri,
    this.iconBackgroundColor,
    this.currentOpeningHours,
    this.currentSecondaryOpeningHours,
    this.regularSecondaryOpeningHours,
    this.editorialSummary,
    this.paymentOptions,
    this.parkingOptions,
    this.subDestinations,
    this.fuelOptions,
    this.evChargeOptions,
    this.generativeSummary,
    this.areaSummary,
    this.containingPlaces,
    this.addressDescriptor,
    this.googleMapsLinks,
    this.priceRange,
    this.utcOffsetMinutes,
    this.userRatingCount,
    this.takeout,
    this.delivery,
    this.dineIn,
    this.curbsidePickup,
    this.reservable,
    this.servesBreakfast,
    this.servesLunch,
    this.servesDinner,
    this.servesBeer,
    this.servesWine,
    this.servesBrunch,
    this.servesVegetarianFood,
    this.outdoorSeating,
    this.liveMusic,
    this.menuForChildren,
    this.servesCocktails,
    this.servesDessert,
    this.servesCoffee,
    this.goodForChildren,
    this.allowsDogs,
    this.restroom,
    this.goodForGroups,
    this.goodForWatchingSports,
    this.accessibilityOptions,
    this.pureServiceAreaBusiness,
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    return _$PlaceFromJson(json);
  }

  @override
  Place? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? Place.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceToJson(this);
  }
}
