import 'package:flutter/material.dart';

class UserStatus extends ChangeNotifier {
  bool _statusLogin = false;

  bool get getStatus => _statusLogin;

  changeStatus() {
    _statusLogin = !_statusLogin;
    notifyListeners();
  }
}
