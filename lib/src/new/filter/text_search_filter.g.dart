// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_search_filter.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TextSearchFilterCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// TextSearchFilter(...).copyWith(id: 12, name: "My name")
  /// ````
  TextSearchFilter call({
    String? languageCode,
    String? regionCode,
    String textQuery,
    PlaceType? includedType,
    bool? includePureServiceAreaBusinesses,
    LocationMultiArea? locationBias,
    LocationMultiArea? locationRestriction,
    EvOptions? evOptions,
    double? minRating,
    bool? openNow,
    int? pageSize,
    String? pageToken,
    List<PriceLevel>? priceLevels,
    RankPreferenceType? rankPreference,
    bool? strictTypeFiltering,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTextSearchFilter.copyWith(...)`.
class _$TextSearchFilterCWProxyImpl implements _$TextSearchFilterCWProxy {
  const _$TextSearchFilterCWProxyImpl(this._value);

  final TextSearchFilter _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// TextSearchFilter(...).copyWith(id: 12, name: "My name")
  /// ````
  TextSearchFilter call({
    Object? languageCode = const $CopyWithPlaceholder(),
    Object? regionCode = const $CopyWithPlaceholder(),
    Object? textQuery = const $CopyWithPlaceholder(),
    Object? includedType = const $CopyWithPlaceholder(),
    Object? includePureServiceAreaBusinesses = const $CopyWithPlaceholder(),
    Object? locationBias = const $CopyWithPlaceholder(),
    Object? locationRestriction = const $CopyWithPlaceholder(),
    Object? evOptions = const $CopyWithPlaceholder(),
    Object? minRating = const $CopyWithPlaceholder(),
    Object? openNow = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? pageToken = const $CopyWithPlaceholder(),
    Object? priceLevels = const $CopyWithPlaceholder(),
    Object? rankPreference = const $CopyWithPlaceholder(),
    Object? strictTypeFiltering = const $CopyWithPlaceholder(),
  }) {
    return TextSearchFilter(
      languageCode: languageCode == const $CopyWithPlaceholder()
          ? _value.languageCode
          // ignore: cast_nullable_to_non_nullable
          : languageCode as String?,
      regionCode: regionCode == const $CopyWithPlaceholder()
          ? _value.regionCode
          // ignore: cast_nullable_to_non_nullable
          : regionCode as String?,
      textQuery: textQuery == const $CopyWithPlaceholder()
          ? _value.textQuery
          // ignore: cast_nullable_to_non_nullable
          : textQuery as String,
      includedType: includedType == const $CopyWithPlaceholder()
          ? _value.includedType
          // ignore: cast_nullable_to_non_nullable
          : includedType as PlaceType?,
      includePureServiceAreaBusinesses:
          includePureServiceAreaBusinesses == const $CopyWithPlaceholder()
              ? _value.includePureServiceAreaBusinesses
              // ignore: cast_nullable_to_non_nullable
              : includePureServiceAreaBusinesses as bool?,
      locationBias: locationBias == const $CopyWithPlaceholder()
          ? _value.locationBias
          // ignore: cast_nullable_to_non_nullable
          : locationBias as LocationMultiArea?,
      locationRestriction: locationRestriction == const $CopyWithPlaceholder()
          ? _value.locationRestriction
          // ignore: cast_nullable_to_non_nullable
          : locationRestriction as LocationMultiArea?,
      evOptions: evOptions == const $CopyWithPlaceholder()
          ? _value.evOptions
          // ignore: cast_nullable_to_non_nullable
          : evOptions as EvOptions?,
      minRating: minRating == const $CopyWithPlaceholder()
          ? _value.minRating
          // ignore: cast_nullable_to_non_nullable
          : minRating as double?,
      openNow: openNow == const $CopyWithPlaceholder()
          ? _value.openNow
          // ignore: cast_nullable_to_non_nullable
          : openNow as bool?,
      pageSize: pageSize == const $CopyWithPlaceholder()
          ? _value.pageSize
          // ignore: cast_nullable_to_non_nullable
          : pageSize as int?,
      pageToken: pageToken == const $CopyWithPlaceholder()
          ? _value.pageToken
          // ignore: cast_nullable_to_non_nullable
          : pageToken as String?,
      priceLevels: priceLevels == const $CopyWithPlaceholder()
          ? _value.priceLevels
          // ignore: cast_nullable_to_non_nullable
          : priceLevels as List<PriceLevel>?,
      rankPreference: rankPreference == const $CopyWithPlaceholder()
          ? _value.rankPreference
          // ignore: cast_nullable_to_non_nullable
          : rankPreference as RankPreferenceType?,
      strictTypeFiltering: strictTypeFiltering == const $CopyWithPlaceholder()
          ? _value.strictTypeFiltering
          // ignore: cast_nullable_to_non_nullable
          : strictTypeFiltering as bool?,
    );
  }
}

extension $TextSearchFilterCopyWith on TextSearchFilter {
  /// Returns a callable class that can be used as follows: `instanceOfTextSearchFilter.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$TextSearchFilterCWProxy get copyWith => _$TextSearchFilterCWProxyImpl(this);
}

abstract class _$EvOptionsCWProxy {
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// EvOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  EvOptions call({
    double? minimumChargingRateKw,
    List<EvConnectorType>? connectorTypes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEvOptions.copyWith(...)`.
class _$EvOptionsCWProxyImpl implements _$EvOptionsCWProxy {
  const _$EvOptionsCWProxyImpl(this._value);

  final EvOptions _value;

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored.
  ///
  /// Usage
  /// ```dart
  /// EvOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  EvOptions call({
    Object? minimumChargingRateKw = const $CopyWithPlaceholder(),
    Object? connectorTypes = const $CopyWithPlaceholder(),
  }) {
    return EvOptions(
      minimumChargingRateKw:
          minimumChargingRateKw == const $CopyWithPlaceholder()
              ? _value.minimumChargingRateKw
              // ignore: cast_nullable_to_non_nullable
              : minimumChargingRateKw as double?,
      connectorTypes: connectorTypes == const $CopyWithPlaceholder()
          ? _value.connectorTypes
          // ignore: cast_nullable_to_non_nullable
          : connectorTypes as List<EvConnectorType>?,
    );
  }
}

extension $EvOptionsCopyWith on EvOptions {
  /// Returns a callable class that can be used as follows: `instanceOfEvOptions.copyWith(...)`.
  // ignore: library_private_types_in_public_api
  _$EvOptionsCWProxy get copyWith => _$EvOptionsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextSearchFilter _$TextSearchFilterFromJson(Map<String, dynamic> json) =>
    TextSearchFilter(
      languageCode: json['languageCode'] as String?,
      regionCode: json['regionCode'] as String?,
      textQuery: json['textQuery'] as String,
      includedType:
          $enumDecodeNullable(_$PlaceTypeEnumMap, json['includedType']),
      includePureServiceAreaBusinesses:
          json['includePureServiceAreaBusinesses'] as bool?,
      locationBias: json['locationBias'] == null
          ? null
          : LocationMultiArea.fromJson(
              json['locationBias'] as Map<String, dynamic>),
      locationRestriction: json['locationRestriction'] == null
          ? null
          : LocationMultiArea.fromJson(
              json['locationRestriction'] as Map<String, dynamic>),
      evOptions: json['evOptions'] == null
          ? null
          : EvOptions.fromJson(json['evOptions'] as Map<String, dynamic>),
      minRating: (json['minRating'] as num?)?.toDouble(),
      openNow: json['openNow'] as bool?,
      pageSize: (json['pageSize'] as num?)?.toInt(),
      pageToken: json['pageToken'] as String?,
      priceLevels: (json['priceLevels'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$PriceLevelEnumMap, e))
          .toList(),
      rankPreference: $enumDecodeNullable(
          _$RankPreferenceTypeEnumMap, json['rankPreference']),
      strictTypeFiltering: json['strictTypeFiltering'] as bool?,
    );

Map<String, dynamic> _$TextSearchFilterToJson(TextSearchFilter instance) =>
    <String, dynamic>{
      if (instance.languageCode case final value?) 'languageCode': value,
      if (instance.regionCode case final value?) 'regionCode': value,
      'textQuery': instance.textQuery,
      if (_$PlaceTypeEnumMap[instance.includedType] case final value?)
        'includedType': value,
      if (instance.includePureServiceAreaBusinesses case final value?)
        'includePureServiceAreaBusinesses': value,
      if (instance.locationBias case final value?) 'locationBias': value,
      if (instance.locationRestriction case final value?)
        'locationRestriction': value,
      if (instance.evOptions case final value?) 'evOptions': value,
      if (instance.minRating case final value?) 'minRating': value,
      if (instance.openNow case final value?) 'openNow': value,
      if (instance.pageSize case final value?) 'pageSize': value,
      if (instance.pageToken case final value?) 'pageToken': value,
      if (instance.priceLevels?.map((e) => _$PriceLevelEnumMap[e]!).toList()
          case final value?)
        'priceLevels': value,
      if (_$RankPreferenceTypeEnumMap[instance.rankPreference]
          case final value?)
        'rankPreference': value,
      if (instance.strictTypeFiltering case final value?)
        'strictTypeFiltering': value,
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

const _$PriceLevelEnumMap = {
  PriceLevel.unspecified: 'PRICE_LEVEL_UNSPECIFIED',
  PriceLevel.free: 'PRICE_LEVEL_FREE',
  PriceLevel.inexpensive: 'PRICE_LEVEL_INEXPENSIVE',
  PriceLevel.moderate: 'PRICE_LEVEL_MODERATE',
  PriceLevel.expensive: 'PRICE_LEVEL_EXPENSIVE',
  PriceLevel.veryExpensive: 'PRICE_LEVEL_VERY_EXPENSIVE',
};

const _$RankPreferenceTypeEnumMap = {
  RankPreferenceType.popularity: 'POPULARITY',
  RankPreferenceType.relevance: 'RELEVANCE',
  RankPreferenceType.distance: 'DISTANCE',
};

EvOptions _$EvOptionsFromJson(Map<String, dynamic> json) => EvOptions(
      minimumChargingRateKw:
          (json['minimumChargingRateKw'] as num?)?.toDouble(),
      connectorTypes: (json['connectorTypes'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$EvConnectorTypeEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$EvOptionsToJson(EvOptions instance) => <String, dynamic>{
      if (instance.connectorTypes
              ?.map((e) => _$EvConnectorTypeEnumMap[e]!)
              .toList()
          case final value?)
        'connectorTypes': value,
      if (instance.minimumChargingRateKw case final value?)
        'minimumChargingRateKw': value,
    };

const _$EvConnectorTypeEnumMap = {
  EvConnectorType.unspecified: 'EV_CONNECTOR_TYPE_UNSPECIFIED',
  EvConnectorType.other: 'EV_CONNECTOR_TYPE_OTHER',
  EvConnectorType.j1772: 'EV_CONNECTOR_TYPE_J1772',
  EvConnectorType.type2: 'EV_CONNECTOR_TYPE_TYPE_2',
  EvConnectorType.chademo: 'EV_CONNECTOR_TYPE_CHADEMO',
  EvConnectorType.ccsCombo1: 'EV_CONNECTOR_TYPE_CCS_COMBO_1',
  EvConnectorType.ccsCombo2: 'EV_CONNECTOR_TYPE_CCS_COMBO_2',
  EvConnectorType.tesla: 'EV_CONNECTOR_TYPE_TESLA',
  EvConnectorType.unspecifiedGBT: 'EV_CONNECTOR_TYPE_UNSPECIFIED_GB_T',
  EvConnectorType.unspecifiedWallOutlet:
      'EV_CONNECTOR_TYPE_UNSPECIFIED_WALL_OUTLET',
};
