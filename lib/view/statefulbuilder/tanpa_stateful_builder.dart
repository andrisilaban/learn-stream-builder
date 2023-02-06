import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learn_stream_builder/view/statefulbuilder/public_methods.dart';

class TanpaStateFulBuilder extends StatefulWidget {
  const TanpaStateFulBuilder({super.key});

  @override
  State<TanpaStateFulBuilder> createState() => _TanpaStateFulBuilderState();
}

class _TanpaStateFulBuilderState extends State<TanpaStateFulBuilder> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    log('BUILDING PAGE');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: makingText('TANPA STATEFUL BUILDER'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('ORIGINAN NUMBER $number'),
          makingText('CURRENT NUMBER'),
          makingMark(),
          makingText(number.toString(), fontSize: 30),
          makingSizedbox(30),
          makingElevatedButton('TAMBAH', onPressed: () {
            setState(() {
              number++;
            });
          }),
        ]),
      ),
    );
  }
}
