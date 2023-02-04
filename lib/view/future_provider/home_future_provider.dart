// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:learn_stream_builder/models/person.dart';
import 'package:learn_stream_builder/view/future_provider/future_person.dart';
import 'package:provider/provider.dart';

class HomeFutureProvider extends StatelessWidget {
  const HomeFutureProvider({Key? key}) : super(key: key);

  Future<Person> getPerson() async {
    await Future.delayed(const Duration(seconds: 4));
    return Person(name: 'Andre Joe', age: 33);
  }

  @override
  Widget build(BuildContext context) {
    return FutureProvider<Person>(
      initialData: Person(name: 'andre', age: 43),
      create: (_) => getPerson(),
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(10.0),
          child: const FuturePerson(),
        ),
      ),
    );
  }
}
