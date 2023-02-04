// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class StreamBuilderKu extends StatelessWidget {
  StreamBuilderKu({Key? key}) : super(key: key);

  Stream<int> generateNumber() async* {
    await Future.delayed(const Duration(seconds: 2));
    for (var i = 0; i < 10; i++) {
      await Future<void>.delayed(const Duration(seconds: 1));
      yield i;
    }
    for (var i = 0; i < 10; i++) {
      await Future.delayed(const Duration(milliseconds: 1000));
      yield i + 10;
    }
  }

  final Stream<int> generateNumber2 = (() async* {
    await Future<void>.delayed(const Duration(seconds: 2));
    for (var i = 0; i < 10; i++) {
      await Future<void>.delayed(const Duration(seconds: 1));
      yield i;
    }
  })();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stream Builder Ku"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              StreamBuilder(
                stream: generateNumber(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Column(
                      children: const [
                        Center(child: CircularProgressIndicator()),
                      ],
                    );
                  } else if (snapshot.connectionState ==
                          ConnectionState.active ||
                      snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      return const Text('DATA ERROR');
                    } else if (snapshot.hasData) {
                      return Text('DATA KE ${snapshot.data}');
                    }
                    return const Text('');
                  }
                  return Text('State: ${snapshot.connectionState}');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
