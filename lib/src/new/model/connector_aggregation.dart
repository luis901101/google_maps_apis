import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_apis/src/new/enums/ev_connector_type.dart';
import 'package:google_maps_apis/src/new/utils/jsonable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'connector_aggregation.g.dart';

/// EV charging information grouped by [type, maxChargeRateKw]. Shows EV charge
/// aggregation of connectors that have the same type and max charge rate in kw.
///
/// Documentation: https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#connectoraggregation
@JsonSerializable()
@CopyWith()
class ConnectorAggregation extends Jsonable<ConnectorAggregation> {
  /// The connector type of this aggregation.
  @JsonKey(unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final EvConnectorType? type;

  /// The static max charging rate in kw of each connector in the aggregation.
  final double? maxChargeRateKw;

  /// Number of connectors in this aggregation.
  final int? count;

  /// The timestamp when the connector availability information in this
  /// aggregation was last updated.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
  /// "2014-10-02T15:01:23.045123456Z".
  final DateTime? availabilityLastUpdateTime;

  /// Number of connectors in this aggregation that are currently available.
  final int? availableCount;

  /// Number of connectors in this aggregation that are currently out of service.
  final int? outOfServiceCount;

  ConnectorAggregation({
    this.type,
    this.maxChargeRateKw,
    this.count,
    this.availabilityLastUpdateTime,
    this.availableCount,
    this.outOfServiceCount,
  });

  factory ConnectorAggregation.fromJson(Map<String, dynamic> json) {
    return _$ConnectorAggregationFromJson(json);
  }

  @override
  ConnectorAggregation? fromJsonMap(Map<String, dynamic>? json) =>
      json != null ? ConnectorAggregation.fromJson(json) : null;

  @override
  Map<String, dynamic> toJson() {
    return _$ConnectorAggregationToJson(this);
  }
}
