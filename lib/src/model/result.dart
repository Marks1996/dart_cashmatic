import 'base_type.dart';

class Result<T extends BaseType> {
  int? code;
  String? message;
  T? data;

  Result({this.code, this.message, this.data});

  factory Result.fromJson(Map<String, dynamic> json,
          [T Function(Map<String, dynamic> data)? jsonAsT]) =>
      Result(
        code: json['code'] as int?,
        message: json['message'] as String?,
        data: jsonAsT?.call(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'code': code,
        'message': message,
        'data': data?.toJson(),
      };
}
