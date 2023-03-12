import 'dart:developer';

import 'package:flutter/foundation.dart';

class HitungNotifier extends ChangeNotifier {
  int _angka = 0;

  get getAngka => _angka;

  void setAngka(int value) {
    _angka += value;
    log('ANGKA SEKARANG $_angka');
    if (kDebugMode) {
      print('NUMBER NOW IS $_angka');
    }
    notifyListeners();
  }
}
