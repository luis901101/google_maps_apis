import 'package:collection/collection.dart' show IterableExtension;
import 'package:json_annotation/json_annotation.dart';

enum PlaceType {
  /// Automotive
  @JsonValue('car_dealer')
  carDealer('car_dealer'),
  @JsonValue('car_rental')
  carRental('car_rental'),
  @JsonValue('car_repair')
  carRepair('car_repair'),
  @JsonValue('car_wash')
  carWash('car_wash'),
  @JsonValue('electric_vehicle_charging_station')
  electricVehicleChargingStation('electric_vehicle_charging_station'),
  @JsonValue('gas_station')
  gasStation('gas_station'),
  @JsonValue('parking')
  parking('parking'),
  @JsonValue('rest_stop')
  restStop('rest_stop'),

  /// Business
  @JsonValue('corporate_office')
  corporateOffice('corporate_office'),
  @JsonValue('farm')
  farm('farm'),
  @JsonValue('ranch')
  ranch('ranch'),

  /// Culture
  @JsonValue('art_gallery')
  artGallery('art_gallery'),
  @JsonValue('art_studio')
  artStudio('art_studio'),
  @JsonValue('auditorium')
  auditorium('auditorium'),
  @JsonValue('cultural_landmark')
  culturalLandmark('cultural_landmark'),
  @JsonValue('historical_place')
  historicalPlace('historical_place'),
  @JsonValue('monument')
  monument('monument'),
  @JsonValue('museum')
  museum('museum'),
  @JsonValue('performing_arts_theater')
  performingArtsTheater('performing_arts_theater'),
  @JsonValue('sculpture')
  sculpture('sculpture'),

  /// Education
  @JsonValue('library')
  library('library'),
  @JsonValue('preschool')
  preschool('preschool'),
  @JsonValue('primary_school')
  primarySchool('primary_school'),
  @JsonValue('school')
  school('school'),
  @JsonValue('secondary_school')
  secondarySchool('secondary_school'),
  @JsonValue('university')
  university('university'),

  /// Entertainment and Recreation
  @JsonValue('adventure_sports_center')
  adventureSportsCenter('adventure_sports_center'),
  @JsonValue('amphitheatre')
  amphitheatre('amphitheatre'),
  @JsonValue('amusement_center')
  amusementCenter('amusement_center'),
  @JsonValue('amusement_park')
  amusementPark('amusement_park'),
  @JsonValue('aquarium')
  aquarium('aquarium'),
  @JsonValue('banquet_hall')
  banquetHall('banquet_hall'),
  @JsonValue('barbecue_area')
  barbecueArea('barbecue_area'),
  @JsonValue('botanical_garden')
  botanicalGarden('botanical_garden'),
  @JsonValue('bowling_alley')
  bowlingAlley('bowling_alley'),
  @JsonValue('casino')
  casino('casino'),
  @JsonValue('childrens_camp')
  childrensCamp('childrens_camp'),
  @JsonValue('comedy_club')
  comedyClub('comedy_club'),
  @JsonValue('community_center')
  communityCenter('community_center'),
  @JsonValue('concert_hall')
  concertHall('concert_hall'),
  @JsonValue('convention_center')
  conventionCenter('convention_center'),
  @JsonValue('cultural_center')
  culturalCenter('cultural_center'),
  @JsonValue('cycling_park')
  cyclingPark('cycling_park'),
  @JsonValue('dance_hall')
  danceHall('dance_hall'),
  @JsonValue('dog_park')
  dogPark('dog_park'),
  @JsonValue('event_venue')
  eventVenue('event_venue'),
  @JsonValue('ferris_wheel')
  ferrisWheel('ferris_wheel'),
  @JsonValue('garden')
  garden('garden'),
  @JsonValue('hiking_area')
  hikingArea('hiking_area'),
  @JsonValue('historical_landmark')
  historicalLandmark('historical_landmark'),
  @JsonValue('internet_cafe')
  internetCafe('internet_cafe'),
  @JsonValue('karaoke')
  karaoke('karaoke'),
  @JsonValue('marina')
  marina('marina'),
  @JsonValue('movie_rental')
  movieRental('movie_rental'),
  @JsonValue('movie_theater')
  movieTheater('movie_theater'),
  @JsonValue('national_park')
  nationalPark('national_park'),
  @JsonValue('night_club')
  nightClub('night_club'),
  @JsonValue('observation_deck')
  observationDeck('observation_deck'),
  @JsonValue('off_roading_area')
  offRoadingArea('off_roading_area'),
  @JsonValue('opera_house')
  operaHouse('opera_house'),
  @JsonValue('park')
  park('park'),
  @JsonValue('philharmonic_hall')
  philharmonicHall('philharmonic_hall'),
  @JsonValue('picnic_ground')
  picnicGround('picnic_ground'),
  @JsonValue('planetarium')
  planetarium('planetarium'),
  @JsonValue('plaza')
  plaza('plaza'),
  @JsonValue('roller_coaster')
  rollerCoaster('roller_coaster'),
  @JsonValue('skateboard_park')
  skateboardPark('skateboard_park'),
  @JsonValue('state_park')
  statePark('state_park'),
  @JsonValue('tourist_attraction')
  touristAttraction('tourist_attraction'),
  @JsonValue('video_arcade')
  videoArcade('video_arcade'),
  @JsonValue('visitor_center')
  visitorCenter('visitor_center'),
  @JsonValue('water_park')
  waterPark('water_park'),
  @JsonValue('wedding_venue')
  weddingVenue('wedding_venue'),
  @JsonValue('wildlife_park')
  wildlifePark('wildlife_park'),
  @JsonValue('wildlife_refuge')
  wildlifeRefuge('wildlife_refuge'),
  @JsonValue('zoo')
  zoo('zoo'),

  /// Facilities
  @JsonValue('public_bath')
  publicBath('public_bath'),
  @JsonValue('public_bathroom')
  publicBathroom('public_bathroom'),
  @JsonValue('stable')
  stable('stable'),

  /// Finance
  @JsonValue('accounting')
  accounting('accounting'),
  @JsonValue('atm')
  atm('atm'),
  @JsonValue('bank')
  bank('bank'),

  /// Food and Drink
  @JsonValue('acai_shop')
  acaiShop('acai_shop'),
  @JsonValue('afghani_restaurant')
  afghaniRestaurant('afghani_restaurant'),
  @JsonValue('african_restaurant')
  africanRestaurant('african_restaurant'),
  @JsonValue('american_restaurant')
  americanRestaurant('american_restaurant'),
  @JsonValue('asian_restaurant')
  asianRestaurant('asian_restaurant'),
  @JsonValue('bagel_shop')
  bagelShop('bagel_shop'),
  @JsonValue('bakery')
  bakery('bakery'),
  @JsonValue('bar')
  bar('bar'),
  @JsonValue('bar_and_grill')
  barAndGrill('bar_and_grill'),
  @JsonValue('barbecue_restaurant')
  barbecueRestaurant('barbecue_restaurant'),
  @JsonValue('brazilian_restaurant')
  brazilianRestaurant('brazilian_restaurant'),
  @JsonValue('breakfast_restaurant')
  breakfastRestaurant('breakfast_restaurant'),
  @JsonValue('brunch_restaurant')
  brunchRestaurant('brunch_restaurant'),
  @JsonValue('buffet_restaurant')
  buffetRestaurant('buffet_restaurant'),
  @JsonValue('cafe')
  cafe('cafe'),
  @JsonValue('cafeteria')
  cafeteria('cafeteria'),
  @JsonValue('candy_store')
  candyStore('candy_store'),
  @JsonValue('cat_cafe')
  catCafe('cat_cafe'),
  @JsonValue('chinese_restaurant')
  chineseRestaurant('chinese_restaurant'),
  @JsonValue('chocolate_factory')
  chocolateFactory('chocolate_factory'),
  @JsonValue('chocolate_shop')
  chocolateShop('chocolate_shop'),
  @JsonValue('coffee_shop')
  coffeeShop('coffee_shop'),
  @JsonValue('confectionery')
  confectionery('confectionery'),
  @JsonValue('deli')
  deli('deli'),
  @JsonValue('dessert_restaurant')
  dessertRestaurant('dessert_restaurant'),
  @JsonValue('dessert_shop')
  dessertShop('dessert_shop'),
  @JsonValue('diner')
  diner('diner'),
  @JsonValue('dog_cafe')
  dogCafe('dog_cafe'),
  @JsonValue('donut_shop')
  donutShop('donut_shop'),
  @JsonValue('fast_food_restaurant')
  fastFoodRestaurant('fast_food_restaurant'),
  @JsonValue('fine_dining_restaurant')
  fineDiningRestaurant('fine_dining_restaurant'),
  @JsonValue('food_court')
  foodCourt('food_court'),
  @JsonValue('french_restaurant')
  frenchRestaurant('french_restaurant'),
  @JsonValue('greek_restaurant')
  greekRestaurant('greek_restaurant'),
  @JsonValue('hamburger_restaurant')
  hamburgerRestaurant('hamburger_restaurant'),
  @JsonValue('ice_cream_shop')
  iceCreamShop('ice_cream_shop'),
  @JsonValue('indian_restaurant')
  indianRestaurant('indian_restaurant'),
  @JsonValue('indonesian_restaurant')
  indonesianRestaurant('indonesian_restaurant'),
  @JsonValue('italian_restaurant')
  italianRestaurant('italian_restaurant'),
  @JsonValue('japanese_restaurant')
  japaneseRestaurant('japanese_restaurant'),
  @JsonValue('juice_shop')
  juiceShop('juice_shop'),
  @JsonValue('korean_restaurant')
  koreanRestaurant('korean_restaurant'),
  @JsonValue('lebanese_restaurant')
  lebaneseRestaurant('lebanese_restaurant'),
  @JsonValue('meal_delivery')
  mealDelivery('meal_delivery'),
  @JsonValue('meal_takeaway')
  mealTakeaway('meal_takeaway'),
  @JsonValue('mediterranean_restaurant')
  mediterraneanRestaurant('mediterranean_restaurant'),
  @JsonValue('mexican_restaurant')
  mexicanRestaurant('mexican_restaurant'),
  @JsonValue('middle_eastern_restaurant')
  middleEasternRestaurant('middle_eastern_restaurant'),
  @JsonValue('pizza_restaurant')
  pizzaRestaurant('pizza_restaurant'),
  @JsonValue('pub')
  pub('pub'),
  @JsonValue('ramen_restaurant')
  ramenRestaurant('ramen_restaurant'),
  @JsonValue('restaurant')
  restaurant('restaurant'),
  @JsonValue('sandwich_shop')
  sandwichShop('sandwich_shop'),
  @JsonValue('seafood_restaurant')
  seafoodRestaurant('seafood_restaurant'),
  @JsonValue('spanish_restaurant')
  spanishRestaurant('spanish_restaurant'),
  @JsonValue('steak_house')
  steakHouse('steak_house'),
  @JsonValue('sushi_restaurant')
  sushiRestaurant('sushi_restaurant'),
  @JsonValue('tea_house')
  teaHouse('tea_house'),
  @JsonValue('thai_restaurant')
  thaiRestaurant('thai_restaurant'),
  @JsonValue('turkish_restaurant')
  turkishRestaurant('turkish_restaurant'),
  @JsonValue('vegan_restaurant')
  veganRestaurant('vegan_restaurant'),
  @JsonValue('vegetarian_restaurant')
  vegetarianRestaurant('vegetarian_restaurant'),
  @JsonValue('vietnamese_restaurant')
  vietnameseRestaurant('vietnamese_restaurant'),
  @JsonValue('wine_bar')
  wineBar('wine_bar'),

  /// Geographical Areas
  @JsonValue('administrative_area_level_1')
  administrativeAreaLevel1('administrative_area_level_1'),
  @JsonValue('administrative_area_level_2')
  administrativeAreaLevel2('administrative_area_level_2'),
  @JsonValue('country')
  country('country'),
  @JsonValue('locality')
  locality('locality'),
  @JsonValue('postal_code')
  postalCode('postal_code'),
  @JsonValue('school_district')
  schoolDistrict('school_district'),

  /// Government
  @JsonValue('ity_hall')
  ityHall('ity_hall'),
  @JsonValue('courthouse')
  courthouse('courthouse'),
  @JsonValue('embassy')
  embassy('embassy'),
  @JsonValue('fire_station')
  fireStation('fire_station'),
  @JsonValue('government_office')
  governmentOffice('government_office'),
  @JsonValue('local_government_office')
  localGovernmentOffice('local_government_office'),

  /// (Japan only)
  @JsonValue('neighborhood_police_station')
  neighborhoodPoliceStation('neighborhood_police_station'),
  @JsonValue('police')
  police('police'),
  @JsonValue('post_office')
  postOffice('post_office'),

  /// Health and Wellness
  @JsonValue('chiropractor')
  chiropractor('chiropractor'),
  @JsonValue('dental_clinic')
  dentalClinic('dental_clinic'),
  @JsonValue('dentist')
  dentist('dentist'),
  @JsonValue('doctor')
  doctor('doctor'),
  @JsonValue('drugstore')
  drugstore('drugstore'),
  @JsonValue('hospital')
  hospital('hospital'),
  @JsonValue('massage')
  massage('massage'),
  @JsonValue('medical_lab')
  medicalLab('medical_lab'),
  @JsonValue('pharmacy')
  pharmacy('pharmacy'),
  @JsonValue('physiotherapist')
  physiotherapist('physiotherapist'),
  @JsonValue('sauna')
  sauna('sauna'),
  @JsonValue('skin_care_clinic')
  skinCareClinic('skin_care_clinic'),
  @JsonValue('spa')
  spa('spa'),
  @JsonValue('tanning_studio')
  tanningStudio('tanning_studio'),
  @JsonValue('wellness_center')
  wellnessCenter('wellness_center'),
  @JsonValue('yoga_studio')
  yogaStudio('yoga_studio'),

  /// Housing
  @JsonValue('apartment_building')
  apartmentBuilding('apartment_building'),
  @JsonValue('apartment_complex')
  apartmentComplex('apartment_complex'),
  @JsonValue('condominium_complex')
  condominiumComplex('condominium_complex'),
  @JsonValue('housing_complex')
  housingComplex('housing_complex'),

  /// Lodging
  @JsonValue('bed_and_breakfast')
  bedAndBreakfast('bed_and_breakfast'),
  @JsonValue('budget_japanese_inn')
  budgetJapaneseInn('budget_japanese_inn'),
  @JsonValue('campground')
  campground('campground'),
  @JsonValue('camping_cabin')
  campingCabin('camping_cabin'),
  @JsonValue('cottage')
  cottage('cottage'),
  @JsonValue('extended_stay_hotel')
  extendedStayHotel('extended_stay_hotel'),
  @JsonValue('farmstay')
  farmstay('farmstay'),
  @JsonValue('guest_house')
  guestHouse('guest_house'),
  @JsonValue('hostel')
  hostel('hostel'),
  @JsonValue('hotel')
  hotel('hotel'),
  @JsonValue('inn')
  inn('inn'),
  @JsonValue('japanese_inn')
  japaneseInn('japanese_inn'),
  @JsonValue('lodging')
  lodging('lodging'),
  @JsonValue('mobile_home_park')
  mobileHomePark('mobile_home_park'),
  @JsonValue('motel')
  motel('motel'),
  @JsonValue('private_guest_room')
  privateGuestRoom('private_guest_room'),
  @JsonValue('resort_hotel')
  resortHotel('resort_hotel'),
  @JsonValue('rv_park')
  rvPark('rv_park'),

  /// Natural Features
  @JsonValue('beach')
  beach('beach'),

  /// Places of Worship
  @JsonValue('church')
  church('church'),
  @JsonValue('hindu_temple')
  hinduTemple('hindu_temple'),
  @JsonValue('mosque')
  mosque('mosque'),
  @JsonValue('synagogue')
  synagogue('synagogue'),

  /// Services
  @JsonValue('astrologer')
  astrologer('astrologer'),
  @JsonValue('barber_shop')
  barberShop('barber_shop'),
  @JsonValue('beautician')
  beautician('beautician'),
  @JsonValue('beauty_salon')
  beautySalon('beauty_salon'),
  @JsonValue('body_art_service')
  bodyArtService('body_art_service'),
  @JsonValue('catering_service')
  cateringService('catering_service'),
  @JsonValue('cemetery')
  cemetery('cemetery'),
  @JsonValue('child_care_agency')
  childCareAgency('child_care_agency'),
  @JsonValue('consultant')
  consultant('consultant'),
  @JsonValue('courier_service')
  courierService('courier_service'),
  @JsonValue('electrician')
  electrician('electrician'),
  @JsonValue('florist')
  florist('florist'),
  @JsonValue('food_delivery')
  foodDelivery('food_delivery'),
  @JsonValue('foot_care')
  footCare('foot_care'),
  @JsonValue('funeral_home')
  funeralHome('funeral_home'),
  @JsonValue('hair_care')
  hairCare('hair_care'),
  @JsonValue('hair_salon')
  hairSalon('hair_salon'),
  @JsonValue('insurance_agency')
  insuranceAgency('insurance_agency'),
  @JsonValue('laundry')
  laundry('laundry'),
  @JsonValue('lawyer')
  lawyer('lawyer'),
  @JsonValue('locksmith')
  locksmith('locksmith'),
  @JsonValue('makeup_artist')
  makeupArtist('makeup_artist'),
  @JsonValue('moving_company')
  movingCompany('moving_company'),
  @JsonValue('nail_salon')
  nailSalon('nail_salon'),
  @JsonValue('painter')
  painter('painter'),
  @JsonValue('plumber')
  plumber('plumber'),
  @JsonValue('psychic')
  psychic('psychic'),
  @JsonValue('real_estate_agency')
  realEstateAgency('real_estate_agency'),
  @JsonValue('roofing_contractor')
  roofingContractor('roofing_contractor'),
  @JsonValue('storage')
  storage('storage'),
  @JsonValue('summer_camp_organizer')
  summerCampOrganizer('summer_camp_organizer'),
  @JsonValue('tailor')
  tailor('tailor'),
  @JsonValue('telecommunications_service_provider')
  telecommunicationsServiceProvider('telecommunications_service_provider'),
  @JsonValue('tour_agency')
  tourAgency('tour_agency'),
  @JsonValue('tourist_information_center')
  touristInformationCenter('tourist_information_center'),
  @JsonValue('travel_agency')
  travelAgency('travel_agency'),
  @JsonValue('veterinary_care')
  veterinaryCare('veterinary_care'),

  /// Shopping
  @JsonValue('asian_grocery_store')
  asianGroceryStore('asian_grocery_store'),
  @JsonValue('auto_parts_store')
  autoPartsStore('auto_parts_store'),
  @JsonValue('bicycle_store')
  bicycleStore('bicycle_store'),
  @JsonValue('book_store')
  bookStore('book_store'),
  @JsonValue('butcher_shop')
  butcherShop('butcher_shop'),
  @JsonValue('cell_phone_store')
  cellPhoneStore('cell_phone_store'),
  @JsonValue('clothing_store')
  clothingStore('clothing_store'),
  @JsonValue('convenience_store')
  convenienceStore('convenience_store'),
  @JsonValue('department_store')
  departmentStore('department_store'),
  @JsonValue('discount_store')
  discountStore('discount_store'),
  @JsonValue('electronics_store')
  electronicsStore('electronics_store'),
  @JsonValue('food_store')
  foodStore('food_store'),
  @JsonValue('furniture_store')
  furnitureStore('furniture_store'),
  @JsonValue('gift_shop')
  giftShop('gift_shop'),
  @JsonValue('grocery_store')
  groceryStore('grocery_store'),
  @JsonValue('hardware_store')
  hardwareStore('hardware_store'),
  @JsonValue('home_goods_store')
  homeGoodsStore('home_goods_store'),
  @JsonValue('home_improvement_store')
  homeImprovementStore('home_improvement_store'),
  @JsonValue('jewelry_store')
  jewelryStore('jewelry_store'),
  @JsonValue('liquor_store')
  liquorStore('liquor_store'),
  @JsonValue('market')
  market('market'),
  @JsonValue('pet_store')
  petStore('pet_store'),
  @JsonValue('shoe_store')
  shoeStore('shoe_store'),
  @JsonValue('shopping_mall')
  shoppingMall('shopping_mall'),
  @JsonValue('sporting_goods_store')
  sportingGoodsStore('sporting_goods_store'),
  @JsonValue('store')
  store('store'),
  @JsonValue('supermarket')
  supermarket('supermarket'),
  @JsonValue('warehouse_store')
  warehouseStore('warehouse_store'),
  @JsonValue('wholesaler')
  wholesaler('wholesaler'),

  /// Sports
  @JsonValue('arena')
  arena('arena'),
  @JsonValue('athletic_field')
  athleticField('athletic_field'),
  @JsonValue('fishing_charter')
  fishingCharter('fishing_charter'),
  @JsonValue('fishing_pond')
  fishingPond('fishing_pond'),
  @JsonValue('fitness_center')
  fitnessCenter('fitness_center'),
  @JsonValue('golf_course')
  golfCourse('golf_course'),
  @JsonValue('gym')
  gym('gym'),
  @JsonValue('ice_skating_rink')
  iceSkatingRink('ice_skating_rink'),
  @JsonValue('playground')
  playground('playground'),
  @JsonValue('ski_resort')
  skiResort('ski_resort'),
  @JsonValue('sports_activity_location')
  sportsActivityLocation('sports_activity_location'),
  @JsonValue('sports_club')
  sportsClub('sports_club'),
  @JsonValue('sports_coaching')
  sportsCoaching('sports_coaching'),
  @JsonValue('sports_complex')
  sportsComplex('sports_complex'),
  @JsonValue('stadium')
  stadium('stadium'),
  @JsonValue('swimming_pool')
  swimmingPool('swimming_pool'),

  /// Transportation
  @JsonValue('airport')
  airport('airport'),
  @JsonValue('airstrip')
  airstrip('airstrip'),
  @JsonValue('bus_station')
  busStation('bus_station'),
  @JsonValue('bus_stop')
  busStop('bus_stop'),
  @JsonValue('ferry_terminal')
  ferryTerminal('ferry_terminal'),
  @JsonValue('heliport')
  heliport('heliport'),
  @JsonValue('international_airport')
  internationalAirport('international_airport'),
  @JsonValue('light_rail_station')
  lightRailStation('light_rail_station'),
  @JsonValue('park_and_ride')
  parkAndRide('park_and_ride'),
  @JsonValue('subway_station')
  subwayStation('subway_station'),
  @JsonValue('taxi_stand')
  taxiStand('taxi_stand'),
  @JsonValue('train_station')
  trainStation('train_station'),
  @JsonValue('transit_depot')
  transitDepot('transit_depot'),
  @JsonValue('transit_station')
  transitStation('transit_station'),
  @JsonValue('truck_stop')
  truckStop('truck_stop'),

  /// Table B values may be returned as part of a Place Autocomplete (New) response.
  @JsonValue('administrative_area_level_3')
  administrativeAreaLevel3('administrative_area_level_3'),
  @JsonValue('administrative_area_level_4')
  administrativeAreaLevel4('administrative_area_level_4'),
  @JsonValue('administrative_area_level_5')
  administrativeAreaLevel5('administrative_area_level_5'),
  @JsonValue('administrative_area_level_6')
  administrativeAreaLevel6('administrative_area_level_6'),
  @JsonValue('administrative_area_level_7')
  administrativeAreaLevel7('administrative_area_level_7'),
  @JsonValue('archipelago')
  archipelago('archipelago'),
  @JsonValue('colloquial_area')
  colloquialArea('colloquial_area'),
  @JsonValue('continent')
  continent('continent'),
  @JsonValue('establishment')
  establishment('establishment'),
  @JsonValue('finance')
  finance('finance'),
  @JsonValue('floor')
  floor('floor'),
  @JsonValue('food')
  food('food'),
  @JsonValue('general_contractor')
  generalContractor('general_contractor'),
  @JsonValue('geocode')
  geocode('geocode'),
  @JsonValue('health')
  health('health'),
  @JsonValue('intersection')
  intersection('intersection'),
  @JsonValue('landmark')
  landmark('landmark'),
  @JsonValue('natural_feature')
  naturalFeature('natural_feature'),
  @JsonValue('neighborhood')
  neighborhood('neighborhood'),
  @JsonValue('place_of_worship')
  placeOfWorship('place_of_worship'),
  @JsonValue('plus_cod')
  plusCod('plus_cod'),
  @JsonValue('point_of_interest')
  pointOfInterest('point_of_interest'),
  @JsonValue('political')
  political('political'),
  @JsonValue('post_box')
  postBox('post_box'),
  @JsonValue('postal_code_prefix')
  postalCodePrefix('postal_code_prefix'),
  @JsonValue('postal_code_suffix')
  postalCodeSuffix('postal_code_suffix'),
  @JsonValue('postal_town')
  postalTown('postal_town'),
  @JsonValue('premise')
  premise('premise'),
  @JsonValue('room')
  room('room'),
  @JsonValue('route')
  route('route'),
  @JsonValue('street_address')
  streetAddress('street_address'),
  @JsonValue('street_number')
  streetNumber('street_number'),
  @JsonValue('sublocality')
  sublocality('sublocality'),
  @JsonValue('sublocality_level_1')
  sublocalityLevel1('sublocality_level_1'),
  @JsonValue('sublocality_level_2')
  sublocalityLevel2('sublocality_level_2'),
  @JsonValue('sublocality_level_3')
  sublocalityLevel3('sublocality_level_3'),
  @JsonValue('sublocality_level_4')
  sublocalityLevel4('sublocality_level_4'),
  @JsonValue('sublocality_level_5')
  sublocalityLevel5('sublocality_level_5'),
  @JsonValue('subpremise')
  subpremise('subpremise'),
  @JsonValue('town_square')
  townSquare('town_square');

  /// Automotive Types: https://developers.google.com/maps/documentation/places/web-service/place-types#automotive
  static const List<PlaceType> automotiveTypes = [
    carDealer,
    carRental,
    carRepair,
    carWash,
    electricVehicleChargingStation,
    gasStation,
    parking,
    restStop,
  ];

  /// Business Types: https://developers.google.com/maps/documentation/places/web-service/place-types#business
  static const List<PlaceType> businessTypes = [corporateOffice, farm, ranch];

  /// Culture Types: https://developers.google.com/maps/documentation/places/web-service/place-types#culture
  static const List<PlaceType> cultureTypes = [
    artGallery,
    artStudio,
    auditorium,
    culturalLandmark,
    historicalPlace,
    monument,
    museum,
    performingArtsTheater,
    sculpture,
  ];

  /// Education Types: https://developers.google.com/maps/documentation/places/web-service/place-types#education
  static const List<PlaceType> educationTypes = [
    library,
    preschool,
    primarySchool,
    school,
    secondarySchool,
    university,
  ];

  /// Entertainment and Recreation Types: https://developers.google.com/maps/documentation/places/web-service/place-types#entertainment-and-recreation
  static const List<PlaceType> entertainmentAndRecreationTypes = [
    adventureSportsCenter,
    amphitheatre,
    amusementCenter,
    amusementPark,
    aquarium,
    banquetHall,
    barbecueArea,
    botanicalGarden,
    bowlingAlley,
    casino,
    childrensCamp,
    comedyClub,
    communityCenter,
    concertHall,
    conventionCenter,
    culturalCenter,
    cyclingPark,
    danceHall,
    dogPark,
    eventVenue,
    ferrisWheel,
    garden,
    hikingArea,
    historicalLandmark,
    internetCafe,
    karaoke,
    marina,
    movieRental,
    movieTheater,
    nationalPark,
    nightClub,
    observationDeck,
    offRoadingArea,
    operaHouse,
    park,
    philharmonicHall,
    picnicGround,
    planetarium,
    plaza,
    rollerCoaster,
    skateboardPark,
    statePark,
    touristAttraction,
    videoArcade,
    visitorCenter,
    waterPark,
    weddingVenue,
    wildlifePark,
    wildlifeRefuge,
    zoo,
  ];

  /// Facilities Types: https://developers.google.com/maps/documentation/places/web-service/place-types#facilities
  static const List<PlaceType> facilitiesTypes = [
    publicBath,
    publicBathroom,
    stable,
  ];

  /// Finance Types: https://developers.google.com/maps/documentation/places/web-service/place-types#finance
  static const List<PlaceType> financeTypes = [accounting, atm, bank];

  /// Food and Drink Types: https://developers.google.com/maps/documentation/places/web-service/place-types#food-and-drink
  static const List<PlaceType> foodAndDrinkTypes = [
    acaiShop,
    afghaniRestaurant,
    africanRestaurant,
    americanRestaurant,
    asianRestaurant,
    bagelShop,
    bakery,
    bar,
    barAndGrill,
    barbecueRestaurant,
    brazilianRestaurant,
    breakfastRestaurant,
    brunchRestaurant,
    buffetRestaurant,
    cafe,
    cafeteria,
    candyStore,
    catCafe,
    chineseRestaurant,
    chocolateFactory,
    chocolateShop,
    coffeeShop,
    confectionery,
    deli,
    dessertRestaurant,
    dessertShop,
    diner,
    dogCafe,
    donutShop,
    fastFoodRestaurant,
    fineDiningRestaurant,
    foodCourt,
    frenchRestaurant,
    greekRestaurant,
    hamburgerRestaurant,
    iceCreamShop,
    indianRestaurant,
    indonesianRestaurant,
    italianRestaurant,
    japaneseRestaurant,
    juiceShop,
    koreanRestaurant,
    lebaneseRestaurant,
    mealDelivery,
    mealTakeaway,
    mediterraneanRestaurant,
    mexicanRestaurant,
    middleEasternRestaurant,
    pizzaRestaurant,
    pub,
    ramenRestaurant,
    restaurant,
    sandwichShop,
    seafoodRestaurant,
    spanishRestaurant,
    steakHouse,
    sushiRestaurant,
    teaHouse,
    thaiRestaurant,
    turkishRestaurant,
    veganRestaurant,
    vegetarianRestaurant,
    vietnameseRestaurant,
    wineBar,
  ];

  /// Geographical Areas Types: https://developers.google.com/maps/documentation/places/web-service/place-types#geographical-areas
  static const List<PlaceType> geographicalAreasTypes = [
    administrativeAreaLevel1,
    administrativeAreaLevel2,
    country,
    locality,
    postalCode,
    schoolDistrict,
  ];

  /// Government Types: https://developers.google.com/maps/documentation/places/web-service/place-types#government
  static const List<PlaceType> governmentTypes = [
    ityHall,
    courthouse,
    embassy,
    fireStation,
    governmentOffice,
    localGovernmentOffice,
    neighborhoodPoliceStation,
    police,
    postOffice,
  ];

  /// Health and Wellness Types: https://developers.google.com/maps/documentation/places/web-service/place-types#health-and-wellness
  static const List<PlaceType> healthAndWellnessTypes = [
    chiropractor,
    dentalClinic,
    dentist,
    doctor,
    drugstore,
    hospital,
    massage,
    medicalLab,
    pharmacy,
    physiotherapist,
    sauna,
    skinCareClinic,
    spa,
    tanningStudio,
    wellnessCenter,
    yogaStudio,
  ];

  /// Housing Types: https://developers.google.com/maps/documentation/places/web-service/place-types#housing
  static const List<PlaceType> housingTypes = [
    apartmentBuilding,
    apartmentComplex,
    condominiumComplex,
    housingComplex,
  ];

  /// Lodging Types: https://developers.google.com/maps/documentation/places/web-service/place-types#lodging
  static const List<PlaceType> lodgingTypes = [
    bedAndBreakfast,
    budgetJapaneseInn,
    campground,
    campingCabin,
    cottage,
    extendedStayHotel,
    farmstay,
    guestHouse,
    hostel,
    hotel,
    inn,
    japaneseInn,
    lodging,
    mobileHomePark,
    motel,
    privateGuestRoom,
    resortHotel,
    rvPark,
  ];

  /// Natural Features Types: https://developers.google.com/maps/documentation/places/web-service/place-types#natural-features
  static const List<PlaceType> naturalFeaturesTypes = [beach];

  /// Places of Worship Types: https://developers.google.com/maps/documentation/places/web-service/place-types#places-of-worship
  static const List<PlaceType> placesOfWorshipTypes = [
    church,
    hinduTemple,
    mosque,
    synagogue,
  ];

  /// Services Types: https://developers.google.com/maps/documentation/places/web-service/place-types#services
  static const List<PlaceType> servicesTypes = [
    astrologer,
    barberShop,
    beautician,
    beautySalon,
    bodyArtService,
    cateringService,
    cemetery,
    childCareAgency,
    consultant,
    courierService,
    electrician,
    florist,
    foodDelivery,
    footCare,
    funeralHome,
    hairCare,
    hairSalon,
    insuranceAgency,
    laundry,
    lawyer,
    locksmith,
    makeupArtist,
    movingCompany,
    nailSalon,
    painter,
    plumber,
    psychic,
    realEstateAgency,
    roofingContractor,
    storage,
    summerCampOrganizer,
    tailor,
    telecommunicationsServiceProvider,
    tourAgency,
    touristInformationCenter,
    travelAgency,
    veterinaryCare,
  ];

  /// Shopping Types: https://developers.google.com/maps/documentation/places/web-service/place-types#shopping
  static const List<PlaceType> shoppingTypes = [
    asianGroceryStore,
    autoPartsStore,
    bicycleStore,
    bookStore,
    butcherShop,
    cellPhoneStore,
    clothingStore,
    convenienceStore,
    departmentStore,
    discountStore,
    electronicsStore,
    foodStore,
    furnitureStore,
    giftShop,
    groceryStore,
    hardwareStore,
    homeGoodsStore,
    homeImprovementStore,
    jewelryStore,
    liquorStore,
    market,
    petStore,
    shoeStore,
    shoppingMall,
    sportingGoodsStore,
    store,
    supermarket,
    warehouseStore,
    wholesaler,
  ];

  /// Sports Types: https://developers.google.com/maps/documentation/places/web-service/place-types#sports
  static const List<PlaceType> sportsTypes = [
    arena,
    athleticField,
    fishingCharter,
    fishingPond,
    fitnessCenter,
    golfCourse,
    gym,
    iceSkatingRink,
    playground,
    skiResort,
    sportsActivityLocation,
    sportsClub,
    sportsCoaching,
    sportsComplex,
    stadium,
    swimmingPool,
  ];

  /// Transportation Types: https://developers.google.com/maps/documentation/places/web-service/place-types#transportation
  static const List<PlaceType> transportationTypes = [
    airport,
    airstrip,
    busStation,
    busStop,
    ferryTerminal,
    heliport,
    internationalAirport,
    lightRailStation,
    parkAndRide,
    subwayStation,
    taxiStand,
    trainStation,
    transitDepot,
    transitStation,
    truckStop,
  ];

  /// Table B values may be returned as part of a Place Autocomplete (New) response.
  /// These types are also supported by includedPrimaryTypes for Place Autocomplete (New) requests.
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/place-types#table-b
  static const List<PlaceType> tableBTypes = [
    administrativeAreaLevel3,
    administrativeAreaLevel4,
    administrativeAreaLevel5,
    administrativeAreaLevel6,
    administrativeAreaLevel7,
    archipelago,
    colloquialArea,
    continent,
    establishment,
    finance,
    floor,
    food,
    generalContractor,
    geocode,
    health,
    intersection,
    landmark,
    naturalFeature,
    neighborhood,
    placeOfWorship,
    plusCod,
    pointOfInterest,
    political,
    postBox,
    postalCodePrefix,
    postalCodeSuffix,
    postalTown,
    premise,
    room,
    route,
    streetAddress,
    streetNumber,
    sublocality,
    sublocalityLevel1,
    sublocalityLevel2,
    sublocalityLevel3,
    sublocalityLevel4,
    sublocalityLevel5,
    subpremise,
    townSquare,
  ];

  final String name;
  const PlaceType(this.name);

  static PlaceType? valueOf(String name) =>
      PlaceType.values.firstWhereOrNull((value) => value.name == name);

  static List<PlaceType>? fromJsonList(List<dynamic>? values) {
    if (values == null) return null;
    List<PlaceType> result = [];
    for (final value in values) {
      final parsedValue = PlaceType.valueOf('$value');
      if (parsedValue != null) {
        result.add(parsedValue);
      }
    }
    return result.isEmpty ? null : result;
  }
}
