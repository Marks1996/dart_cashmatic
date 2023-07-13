import 'base_type.dart';

class Login extends BaseType {
  String? token;

  Login({this.token});

  @override
  Map<String, dynamic> toJson() => {
        'token': token,
      };

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        token: json['token'] as String?,
      );
}
