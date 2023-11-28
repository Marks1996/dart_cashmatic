import 'dart:convert';
import 'dart:io';
import 'package:dart_cashmatic/src/model/base_type.dart';

import 'model/export.dart';

/// Http请求类
class Http {
  String _authroization = '';
  factory Http() => _instance;
  static final Http _instance = Http._internal();
  Http._internal();

  /// 设置Authorization
  set authorization(String value) {
    _authroization = value;
  }

  /// post请求
  Future<Result<T>> post<T extends BaseType>(
    String url, {
    Map<String, dynamic>? queryParameters,
    dynamic data,
    dynamic jsonAsT,
  }) async {
    final httpClient = HttpClient();
    httpClient.badCertificateCallback =
        (X509Certificate cert, String host, int port) {
      return true;
    };

    if (queryParameters != null) {
      url += '?';
      queryParameters.forEach((key, value) {
        url += '$key=$value&';
      });
      url = url.substring(0, url.length - 1);
    }

    HttpClientRequest request = await httpClient.postUrl(Uri.parse(url));
    request.headers.set('Content-Type', 'application/json');
    if (_authroization.isNotEmpty) {
      request.headers.set('Authorization', _authroization);
    }
    if (data != null) {
      String jsonStr = jsonEncode(data);
      request.headers.add('Content-Length', jsonStr.length);
      request.add(utf8.encode(jsonStr));
    }
    HttpClientResponse response = await request.close();
    String resultStr = await response.transform(utf8.decoder).join();
    httpClient.close();
    final result = Result<T>.fromJson(jsonDecode(resultStr), jsonAsT);
    return result;
  }
}
