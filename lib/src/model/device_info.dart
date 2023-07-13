import 'base_type.dart';
import 'module.dart';

class DeviceInfo extends BaseType {
  String? deviceName;
  String? model;
  String? serialNumber;
  String? vpnAddress;
  int? statusCode;
  String? statusMessage;
  int? errorCode;
  String? errorMessage;
  int? functionalityCode;
  String? functionalityMessage;
  List<Module>? modules;

  DeviceInfo({
    this.deviceName,
    this.model,
    this.serialNumber,
    this.vpnAddress,
    this.statusCode,
    this.statusMessage,
    this.errorCode,
    this.errorMessage,
    this.functionalityCode,
    this.functionalityMessage,
    this.modules,
  });

  factory DeviceInfo.fromJson(Map<String, dynamic> json) => DeviceInfo(
        deviceName: json['deviceName'] as String?,
        model: json['model'] as String?,
        serialNumber: json['serialNumber'] as String?,
        vpnAddress: json['vpnAddress'] as String?,
        statusCode: json['statusCode'] as int?,
        statusMessage: json['statusMessage'] as String?,
        errorCode: json['errorCode'] as int?,
        errorMessage: json['errorMessage'] as String?,
        functionalityCode: json['functionalityCode'] as int?,
        functionalityMessage: json['functionalityMessage'] as String?,
        modules: (json['modules'] as List<dynamic>?)
            ?.map((e) => Module.fromJson(e as Map<String, dynamic>))
            .toList(),
      );
  @override
  Map<String, dynamic> toJson() => {
        'deviceName': deviceName,
        'model': model,
        'serialNumber': serialNumber,
        'vpnAddress': vpnAddress,
        'statusCode': statusCode,
        'statusMessage': statusMessage,
        'errorCode': errorCode,
        'errorMessage': errorMessage,
        'functionalityCode': functionalityCode,
        'functionalityMessage': functionalityMessage,
        'modules': modules?.map((e) => e.toJson()).toList(),
      };
}
