import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learn_stream_builder/models/activity.dart';
import 'package:provider/provider.dart';

List<String> fruit = ['badminton', 'swimming', 'futsal'];

class ActivityDaily extends StatelessWidget {
  const ActivityDaily({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity Daily'),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  context
                      .read<Activity>()
                      .setHeight(Random().nextInt(10) + 170);
                  context.read<Activity>().setAge(Random().nextInt(10));
                  context
                      .read<Activity>()
                      .setHobby(fruit[Random().nextInt(fruit.length)]);
                  context.read<Activity>().setWakeUp(7);
                  context.read<Activity>().setSmile(true);
                },
                icon: const Icon(
                  Icons.replay,
                  size: 24.0,
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: ElevatedButton.icon(
        icon: const Icon(Icons.add),
        label: const Text("Add Activity"),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueGrey,
        ),
        onPressed: () {},
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'HEIGHT ANDRE ${(context.watch<Activity>().height ?? 170).toString()}',
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            Consumer<Activity>(
              builder: (_, activity, __) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Andre',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'HEIGHT ${(activity.height ?? 170).toString()}',
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'UMUR ${activity.age.toString()}',
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'HOBBY ${(activity.hobby ?? '-')}',
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'BANGUN TIDUR ${activity.wakeUp.toString()}',
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'TERSENYUM ${(activity.smile ?? false).toString()}',
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
