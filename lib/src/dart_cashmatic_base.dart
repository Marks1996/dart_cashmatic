import 'package:dart_cashmatic/src/http.dart';
import 'package:dart_cashmatic/src/url.dart';

import 'model/export.dart';

class CashMatic {
  static final _http = Http();

  /// 设置Authorization
  /// [url] 服务器地址
  /// [username] 用户名
  /// [password] 密码
  static Future<Result<Login>> login(
      String url, String username, String password) async {
    url += Urls.login;
    final Result<Login> result = await _http.post(url,
        data: {'username': username, 'password': password},
        jsonAsT: Login.fromJson);
    final login = result.data;
    _http.authorization = login?.token ?? '';
    return result;
  }

  /// 开始支付
  /// [url] 服务器地址
  /// [reason] 支付原因
  /// [reference] 支付参考
  /// [amount] 支付金额
  /// [queueAllowed] 是否允许排队
  static Future<Result> startPayment(
    String url,
    String reason,
    String reference,
    num amount,
    bool queueAllowed,
  ) async {
    url += Urls.startPayment;
    return await _http.post(url, data: {
      'reason': reason,
      'reference': reference,
      'amount': amount,
      'queueAllowed': queueAllowed
    });
  }

  /// 取消支付
  /// [url] 服务器地址
  static Future<Result> cancelPayment(String url) async {
    url += Urls.cancelPayment;
    return await _http.post(url);
  }

  /// 提交支付
  /// [url] 服务器地址
  static Future<Result> commitPayment(String url) async {
    url += Urls.commitPayment;
    return await _http.post(url);
  }

  /// 获取活动交易
  /// [url] 服务器地址
  static Future<Result<ActiveTransaction>> getActiveTransaction(
      String url) async {
    url += Urls.activeTransaction;
    final result = await _http.post<ActiveTransaction>(url,
        jsonAsT: ActiveTransaction.fromJson);
    return result;
  }

  /// 获取最后一笔交易
  /// [url] 服务器地址
  static Future<Result<Transaction>> lastTransaction(String url) async {
    url += Urls.lastTransaction;
    final result =
        await _http.post<Transaction>(url, jsonAsT: Transaction.fromJson);
    return result;
  }

  /// 根据ID获取交易
  /// [url] 服务器地址
  static Future<Result<Transaction>> getTransaction(
      String url, num transactionId) {
    url += Urls.getTransaction;
    return _http.post<Transaction>(url,
        data: {
          'transactionId': transactionId,
        },
        jsonAsT: Transaction.fromJson);
  }

  /// 获取设备信息
  /// [url] 服务器地址
  static Future<Result<DeviceInfo>> getDeviceInfo(String url) async {
    url += Urls.getDeviceInfo;
    final result =
        await _http.post<DeviceInfo>(url, jsonAsT: DeviceInfo.fromJson);
    return result;
  }
}
