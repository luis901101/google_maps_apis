import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/enums/place_type.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address_component.g.dart';

/// The structured components that form the formatted address, if this information is available.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#addresscomponent
@JsonSerializable()
@CopyWith()
class AddressComponent extends Jsonable<AddressComponent> {
  /// The full text description or name of the address component. For example,
  /// an address component for the country Australia may have a long_name of "Australia".
  final String? longText;

  /// An abbreviated textual name for the address component, if available.
  /// For example, an address component for the country of Australia may have a short_name of "AU".
  final String? shortText;

  /// An array indicating the type(s) of the address component.
  @JsonKey(fromJson: PlaceType.fromJsonList)
  final List<PlaceType>? types;

  /// The language used to format this components, in CLDR notation.
  final String? languageCode;

  AddressComponent({
    this.longText,
    this.shortText,
    this.types,
    this.languageCode,
  });

  factory AddressComponent.fromJson(Map<String, dynamic> json) {
    return _$AddressComponentFromJson(json);
  }

  @override
  AddressComponent? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? AddressComponent.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$AddressComponentToJson(this);
  }
}
