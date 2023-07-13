import 'base_type.dart';

class PiecesIn extends BaseType {
  int? value;
  String? currency;
  int? count;
  String? type;
  String? unit;
  String? routing;

  PiecesIn({
    this.value,
    this.currency,
    this.count,
    this.type,
    this.unit,
    this.routing,
  });

  factory PiecesIn.fromJson(Map<String, dynamic> json) => PiecesIn(
        value: json['value'] as int?,
        currency: json['currency'] as String?,
        count: json['count'] as int?,
        type: json['type'] as String?,
        unit: json['unit'] as String?,
        routing: json['routing'] as String?,
      );
  @override
  Map<String, dynamic> toJson() => {
        'value': value,
        'currency': currency,
        'count': count,
        'type': type,
        'unit': unit,
        'routing': routing,
      };
}
