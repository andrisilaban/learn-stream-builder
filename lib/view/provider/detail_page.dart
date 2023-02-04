import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/person.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            'NAME : ${context.read<Person>().name}',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            'AGE : ${context.read<Person>().age}',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      )),
    );
  }
}
