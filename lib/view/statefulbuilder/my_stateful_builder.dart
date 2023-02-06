import 'package:flutter/material.dart';
import 'package:learn_stream_builder/view/statefulbuilder/public_methods.dart';

class MyStatefulBuilder extends StatelessWidget {
  const MyStatefulBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    int number = 0;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('MY STATEFUL BUILDER'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('ORIGINAN NUMBER $number'),
          makingText('CURRENT NUMBER'),
          makingMark(),
          StatefulBuilder(builder: (context, setStateSukaSuka) {
            return Column(
              children: [
                makingText(number.toString(), fontSize: 30),
                makingSizedbox(30),
                makingElevatedButton('TAMBAH', onPressed: () {
                  setStateSukaSuka(() {
                    number++;
                  });
                }),
              ],
            );
          }),
        ]),
      ),
    );
  }
}
