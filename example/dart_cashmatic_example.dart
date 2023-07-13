import 'package:dart_cashmatic/dart_cashmatic.dart';

void main() async {
  var login = await CashMatic.login('', '', '');
  var res = await CashMatic.startPayment(
      '', 'test commit payment', '7/2023', 10, true);
  await getActiveTransactionFun();
}

getActiveTransactionFun() async {
  final getActiveTransaction =
      await CashMatic.getActiveTransaction('');
  print(getActiveTransaction.toJson());
  await Future.delayed(Duration(seconds: 10));
  await getActiveTransactionFun();
}
