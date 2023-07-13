import 'module.dart';

class Peripheral {
  int? nameCode;
  String? name;
  int? operationalityCode;
  String? operationalityMessage;
  int? statusCode;
  String? statusMessage;
  List<Module>? modules;

  Peripheral({
    this.nameCode,
    this.name,
    this.operationalityCode,
    this.operationalityMessage,
    this.statusCode,
    this.statusMessage,
    this.modules,
  });

  factory Peripheral.fromJson(Map<String, dynamic> json) => Peripheral(
        nameCode: json['nameCode'] as int?,
        name: json['name'] as String?,
        operationalityCode: json['operationalityCode'] as int?,
        operationalityMessage: json['operationalityMessage'] as String?,
        statusCode: json['statusCode'] as int?,
        statusMessage: json['statusMessage'] as String?,
        modules: (json['modules'] as List<dynamic>?)
            ?.map((e) => Module.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'nameCode': nameCode,
        'name': name,
        'operationalityCode': operationalityCode,
        'operationalityMessage': operationalityMessage,
        'statusCode': statusCode,
        'statusMessage': statusMessage,
        'modules': modules?.map((e) => e.toJson()).toList(),
      };
}
