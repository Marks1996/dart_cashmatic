import 'peripheral.dart';

class Module {
  int? typeCode;
  String? typeMessage;
  int? statusCode;
  String? statusMessage;
  List<Peripheral>? peripherals;

  Module({
    this.typeCode,
    this.typeMessage,
    this.statusCode,
    this.statusMessage,
    this.peripherals,
  });

  factory Module.fromJson(Map<String, dynamic> json) => Module(
        typeCode: json['typeCode'] as int?,
        typeMessage: json['typeMessage'] as String?,
        statusCode: json['statusCode'] as int?,
        statusMessage: json['statusMessage'] as String?,
        peripherals: (json['peripherals'] as List<dynamic>?)
            ?.map((e) => Peripheral.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'typeCode': typeCode,
        'typeMessage': typeMessage,
        'statusCode': statusCode,
        'statusMessage': statusMessage,
        'peripherals': peripherals?.map((e) => e.toJson()).toList(),
      };
}
