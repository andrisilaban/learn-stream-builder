import 'package:flutter/material.dart';
import 'package:learn_stream_builder/models/person.dart';
import 'package:provider/provider.dart';

// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

class StreamProviderPerson extends StatelessWidget {
  const StreamProviderPerson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: [
          Row(
            children: [
              Text(
                context.watch<Person>().name ?? 'NO NAME',
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 2.0),
              Text(
                (context.watch<Person>().age ?? 0).toString(),
                style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 20.0),
            ],
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
