import 'dart:developer';

import 'package:flutter/cupertino.dart';

class CounterModelNotifier extends ChangeNotifier{
  int counter = 10;

  int get getCounter => counter;

  void setCounter(int value) {
    counter ++;
    log('COUNTER $counter');
    notifyListeners();
  }
}
