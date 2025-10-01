import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/enums/ev_connector_type.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ev_options.g.dart';

/// Searchable EV options of a place search request.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places/searchText#evoptions
@JsonSerializable()
@CopyWith()
class EvOptions extends Jsonable<EvOptions> {
  /// Filters by the type of EV charging connector available at a place. A place
  /// that does not support any of the connector types will be filtered out.
  /// Supported EV charging connector types include combined (AC and DC) chargers,
  /// Tesla chargers, GB/T-compliant chargers (for EV fast charging in China),
  /// and wall outlet chargers. For more information, see the [reference documentation](https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places/searchText#evoptions).
  ///
  /// - To filter results for a specific supported connector, set [connectorTypes]
  ///   to that value. For example, to find J1772 type 1 connectors, set
  ///   [connectorTypes] to [EvConnectorType.j1772].
  /// - To filter results for unsupported connectors, set [connectorTypes] to
  ///   [EvConnectorType.other].
  /// - To filter results for any connector type that is a wall outlet, set
  ///   [connectorTypes] to [EvConnectorType.unspecifiedWallOutlet].
  /// - To filter results for any connector type, either set [connectorTypes] to
  ///   [EvConnectorType.unspecified] or don't set a value for [connectorTypes].
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/text-search#connectortypes
  final List<EvConnectorType>? connectorTypes;

  /// Filters places by minimum EV charging rate in kilowatts (kW). Any places
  /// with charging a rate less than the minimum charging rate are filtered out.
  /// For example, to find EV chargers with charging rates that are at least 10 kW,
  /// you can set this parameter to "10."
  ///
  /// Documentation: https://developers.google.com/maps/documentation/places/web-service/text-search#minimumchargingratekw
  final double? minimumChargingRateKw;

  EvOptions({this.minimumChargingRateKw, this.connectorTypes});

  factory EvOptions.fromJson(Map<String, dynamic> json) {
    return _$EvOptionsFromJson(json);
  }

  @override
  EvOptions? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? EvOptions.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$EvOptionsToJson(this);
  }
}
