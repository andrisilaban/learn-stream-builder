import 'package:flutter/material.dart';

class MyCart extends ChangeNotifier {
  List<int> item = [];
  int currentIndex = 0;

  int getItem() => item.length;

  setIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  addItem(int index) {
    item.add(index);
    notifyListeners();
  }

  remoteItem() {
    if (item.isNotEmpty) item.removeAt(currentIndex);
    notifyListeners();
  }
}
