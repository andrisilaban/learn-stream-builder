import 'dart:developer';

class TempValue {
  int _valueTempValue = 100;

  int get getTempValue => _valueTempValue;

  addTempValue(int value) {
    _valueTempValue += value;
    log('TEMP VALUE $_valueTempValue');
  }
}
