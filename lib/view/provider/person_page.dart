import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/person.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Person Page'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.refresh,
              size: 24.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.navigate_next_sharp,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: Center(
          child: Column(
        children: [Text(context.read<Person>().name ?? '')],
      )),
    );
  }
}
