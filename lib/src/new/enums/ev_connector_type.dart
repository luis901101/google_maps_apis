import 'package:collection/collection.dart' show IterableExtension;
import 'package:json_annotation/json_annotation.dart';

/// The type of electric vehicle (EV) charging connectors
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#evconnectortype
enum EvConnectorType {
  /// Unspecified connector.
  @JsonValue('EV_CONNECTOR_TYPE_UNSPECIFIED')
  unspecified('EV_CONNECTOR_TYPE_UNSPECIFIED'),

  /// Other connector types.
  @JsonValue('EV_CONNECTOR_TYPE_OTHER')
  other('EV_CONNECTOR_TYPE_OTHER'),

  /// J1772 type 1 connector.
  @JsonValue('EV_CONNECTOR_TYPE_J1772')
  j1772('EV_CONNECTOR_TYPE_J1772'),

  /// IEC 62196 type 2 connector. Often referred to as MENNEKES.
  @JsonValue('EV_CONNECTOR_TYPE_TYPE_2')
  type2('EV_CONNECTOR_TYPE_TYPE_2'),

  /// CHAdeMO type connector.
  @JsonValue('EV_CONNECTOR_TYPE_CHADEMO')
  chademo('EV_CONNECTOR_TYPE_CHADEMO'),

  /// Combined Charging System (AC and DC). Based on SAE. Type-1 J-1772 connector
  @JsonValue('EV_CONNECTOR_TYPE_CCS_COMBO_1')
  ccsCombo1('EV_CONNECTOR_TYPE_CCS_COMBO_1'),

  /// Combined Charging System (AC and DC). Based on Type-2 Mennekes connector
  @JsonValue('EV_CONNECTOR_TYPE_CCS_COMBO_2')
  ccsCombo2('EV_CONNECTOR_TYPE_CCS_COMBO_2'),

  /// The generic TESLA connector. This is NACS in the North America but can be non-NACS in other parts of the world (e.g. CCS Combo 2 (CCS2) or GB/T). This value is less representative of an actual connector type, and more represents the ability to charge a Tesla brand vehicle at a Tesla owned charging station.
  @JsonValue('EV_CONNECTOR_TYPE_TESLA')
  tesla('EV_CONNECTOR_TYPE_TESLA'),

  /// GB/T type corresponds to the GB/T standard in China. This type covers all GB_T types.
  @JsonValue('EV_CONNECTOR_TYPE_UNSPECIFIED_GB_T')
  unspecifiedGBT('EV_CONNECTOR_TYPE_UNSPECIFIED_GB_T'),

  /// Unspecified wall outlet.
  @JsonValue('EV_CONNECTOR_TYPE_UNSPECIFIED_WALL_OUTLET')
  unspecifiedWallOutlet('EV_CONNECTOR_TYPE_UNSPECIFIED_WALL_OUTLET');

  final String name;
  const EvConnectorType(this.name);

  static EvConnectorType? valueOf(String name) =>
      EvConnectorType.values.firstWhereOrNull((value) => value.name == name);
}
