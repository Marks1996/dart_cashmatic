import 'dart:async';

import 'package:dart_cashmatic/dart_cashmatic.dart';
import 'package:test/test.dart';

void main() {
  const String url = 'https://xxxxx:50301';
  const String username = 'xxx';
  const String password = 'xxx';
  group('A group of tests', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('Login', () async {
      var login = await CashMatic.login(url, username, password);
      print(login.toJson());
    });
    test('cancelPayment', () async {
      await CashMatic.login(url, username, password);
      await CashMatic.cancelPayment(url);
      // print(res.toJson());
    });

    getActiveTransactionFun() async {
      final getActiveTransaction = await CashMatic.getActiveTransaction(url);
      print(getActiveTransaction.toJson());
      await Future.delayed(Duration(seconds: 1));
      await getActiveTransactionFun();
    }

    test('startPayment', () async {
      await CashMatic.login(url, username, password);
      await CashMatic.startPayment(
          url, 'test commit payment', '7/2023', 399, true);
      await getActiveTransactionFun();
    });

    test('commitPayment', () async {
      await CashMatic.login(url, username, password);
      await CashMatic.commitPayment(url);
    });

    test('getActiveTransaction', () async {
      await CashMatic.login(url, username, password);
      var res = await CashMatic.getActiveTransaction(url);

      print(res.toJson());
    });
    test('lastTransaction', () async {
      await CashMatic.login(url, username, password);
      var res = await CashMatic.lastTransaction(url);
      print(res.toJson());
    });

    test('getTransaction', () async {
      await CashMatic.login(url, username, password);
      var res = await CashMatic.getTransaction(url, 1175);
      print(res.toJson());
    });
  });
}
