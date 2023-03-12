import 'package:flutter/material.dart';
import 'package:learn_stream_builder/view/multiprovider/models/counter.model.change.dart';
import 'package:provider/provider.dart';

class BodyCounterNotifier extends StatelessWidget {
  const BodyCounterNotifier({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final counter = Provider.of<CounterModelNotifier>(context, listen: false); //update view berhenti
    // final counter = context.read<CounterModelNotifier>(); //update view berhenti
    // final counter = context.watch<CounterModelNotifier>(); // listen  = true, update view berjalan
    // final counter = Provider.of<CounterModelNotifier>(context); // listen  = true, update view berjalan
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Count Click'),
          // Text('${counter.getCounter}'),
          // IconButton(onPressed: () {
          //   counter.setCounter(1);
          // }, icon: Icon(Icons.add)),
          Text('${context.watch<CounterModelNotifier>().getCounter}'),
          IconButton(
              onPressed: () {
                context.read<CounterModelNotifier>().setCounter(1);
              },
              icon: Icon(Icons.add)),
        ],
      ),
    );
  }
}
