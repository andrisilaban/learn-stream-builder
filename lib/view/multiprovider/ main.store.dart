import 'package:flutter/material.dart';
import 'package:learn_stream_builder/view/multiprovider/body.counter.dart';
import 'package:learn_stream_builder/view/multiprovider/models/counter.model..dart';
import 'package:learn_stream_builder/view/multiprovider/models/counter.model.change.dart';
import 'package:provider/provider.dart';

import 'body.counter.notifier.dart';

class MainStore extends StatelessWidget {
  const MainStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int value = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Store'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Provider<CounterModel>(
            create: (context) => CounterModel(),
            child: const BodyCounter(),
          ),
          ChangeNotifierProvider<CounterModelNotifier>(
            create: (context) => CounterModelNotifier(),
            child: const BodyCounterNotifier(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
