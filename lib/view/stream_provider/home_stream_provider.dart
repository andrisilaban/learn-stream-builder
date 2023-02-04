// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:learn_stream_builder/view/stream_provider/stream_provider_person.dart';
import 'package:provider/provider.dart';

import '../../models/person.dart';

class HomeStreamProvider extends StatelessWidget {
  const HomeStreamProvider({Key? key}) : super(key: key);

  Stream<Person> getPerson() async* {
    await Future.delayed(const Duration(seconds: 2));
    yield Person(name: 'Togap Sihombing', age: 60);
    await Future.delayed(const Duration(seconds: 2));
    yield Person(name: 'Serlika Panjaitan', age: 52);
  }

  @override
  Widget build(BuildContext context) {
    return StreamProvider(
      initialData: Person(),
      create: (_) => getPerson(),
      child: const Scaffold(
        body: StreamProviderPerson(),
      ),
    );
  }
}
