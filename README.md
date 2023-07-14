## 快速开始
加入引用 pubspec.yml
```yml
dependencies:
  dart_cashmatic:
    git:
      url: https://github.com/Marks1996/dart_cashmatic.git
```

在使用的部分引用 

```dart
import 'package:dart_cashmatic/dart_cashmatic.dart';
const Result<Login> login = CashMatic.login('https://XXX.com','username','password');
```

## 已经支持的接口

1. login 登录
2. startPayment 开始支付
3. cancelPayment 取消支付
4. commitPayment 提交并直接结束当前支付
5. activeTransaction 获取当前交易详情
6. lastTransaction 获取最后一次交易详情
7. getDeviceInfo 获取设备详情
8. getTransaction 根据交易ID获取交易详情
