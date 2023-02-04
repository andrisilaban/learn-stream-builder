import 'package:flutter/material.dart';

class Activity extends ChangeNotifier {
  int age = 0;
  int? height;
  double wakeUp = 0.0;
  String? hobby;
  bool? smile;

  // Constructor
  Activity(
      {required this.age,
      this.height,
      required this.wakeUp,
      this.hobby,
      this.smile});

  // Getters
  int getAge() => age;
  int? getHeight() => height;
  double getWakeUp() => wakeUp;
  String? getHobby() => hobby;
  bool? getSmile() => smile;

  // Setters
  setAge(int age) {
    this.age = age;
    notifyListeners();
  }

  setHeight(int? height) {
    this.height = height;
    notifyListeners();
  }

  setWakeUp(double wakeUp) {
    this.wakeUp = wakeUp;
    notifyListeners();
  }

  setHobby(String? hobby) {
    this.hobby = hobby;
    notifyListeners();
  }

  setSmile(bool? smile) {
    this.smile = smile;
    notifyListeners();
  }
}
