import 'package:flutter/material.dart';
import 'package:learn_stream_builder/view/statefulbuilder/public_methods.dart';



class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MyStatefulBuilder extends StatelessWidget {
  const MyStatefulBuilder({super.key});

  Widget showSplitWord(String newNoAsuransi) {
    List<String> parts = newNoAsuransi.split(RegExp(r'\D+'));
    String temp = '';
    for (var part in parts) {
      temp += '$part\n';
    }
    return Text(
      temp,
      style: const TextStyle(fontSize: 30, color: Colors.green),
    );
  }

  @override
  Widget build(BuildContext context) {
    String newNoAsuransi = '11111||-||33333333||-.444444444|';
    int number = 0;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('MY STATEFUL BUILDER'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          showSplitWord(newNoAsuransi),
          Text('ORIGINAL NUMBER $number'),
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
