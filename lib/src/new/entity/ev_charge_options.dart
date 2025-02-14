import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/entity/connector_aggregation.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ev_charge_options.g.dart';

/// Information about the EV Charge Station hosted in Place. Terminology follows
/// https://afdc.energy.gov/fuels/electricity_infrastructure.html One port could
/// charge one car at a time. One port has one or more connectors. One station
/// has one or more ports.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#evchargeoptions
@JsonSerializable()
@CopyWith()
class EVChargeOptions extends Jsonable<EVChargeOptions> {
  /// Number of connectors at this station. However, because some ports can have
  /// multiple connectors but only be able to charge one car at a time (e.g.)
  /// the number of connectors may be greater than the total number of cars which
  /// can charge simultaneously.
  final int? connectorCount;

  /// A list of EV charging connector aggregations that contain connectors of
  /// the same type and same charge rate.
  final List<ConnectorAggregation>? connectorAggregation;

  EVChargeOptions({
    this.connectorCount,
    this.connectorAggregation,
  });

  factory EVChargeOptions.fromJson(Map<String, dynamic> json) {
    return _$EVChargeOptionsFromJson(json);
  }

  @override
  EVChargeOptions? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? EVChargeOptions.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$EVChargeOptionsToJson(this);
  }
}
