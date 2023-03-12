import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/counter.model..dart';

class BodyCounter extends StatelessWidget {
  const BodyCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final counter = Provider.of<CounterModel>(context, listen: false); //update view berhenti
    // final counter = context.read<CounterModel>(); //update view berhenti
    // final counter = context.watch<CounterModel>(); // listen  = true, update view berjalan
    final counter = Provider.of<CounterModel>(
        context); // listen  = true, update view berjalan
    final counter2 = Provider.of<CounterModel>(context, listen: true)
        .getCounter; // listen  = true, update view berjalan
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Count Click'),
          Text('${counter2}'),
          IconButton(
              onPressed: () {
                counter.setCounter(1);
              },
              icon: Icon(Icons.add)),
          // Text('${context.watch<CounterModel>().getCounter}'),
          // IconButton(onPressed: () {
          //   context.read<CounterModel>().setCounter(1);
          // }, icon: Icon(Icons.add)),
        ],
      ),
    );
  }
}
