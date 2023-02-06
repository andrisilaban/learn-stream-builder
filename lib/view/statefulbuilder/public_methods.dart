import 'dart:developer';

import 'package:flutter/material.dart';

Widget makingMark() {
  log('------------');
  return Container();
}

Widget makingText(String text, {double? fontSize}) {
  log('BUILDING TEXT ${text.toUpperCase()}');
  return Text(
    text,
    style: TextStyle(fontSize: fontSize),
  );
}

Widget makingSizedbox(double height) {
  log('BUILDING SIZEDBOX $height');
  return SizedBox(
    height: height,
  );
}

Widget makingElevatedButton(String text, {void Function()? onPressed}) {
  log('BUILDING ELEVATED BUTTON $text');
  return ElevatedButton(
    onPressed: onPressed,
    child: makingText(text),
  );
}

Widget makingText2(String text, {double? fontSize}) {
  log('BUILDING TEXT: $text');
  return Text(
    text,
    style: TextStyle(fontSize: fontSize),
  );
}

Widget makingSpace(double height) {
  log('BUILDING SIZEDBOX: $height');
  return SizedBox(height: height);
}

Widget makingButton(String text, {void Function()? onPressed}) {
  log('BUILDING BUTTON: ${text.toString().toUpperCase()}');
  return Center(
    child: SizedBox(
      width: 100,
      child: ElevatedButton(onPressed: onPressed, child: makingText(text)),
    ),
  );
}
