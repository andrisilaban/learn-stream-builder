import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learn_stream_builder/models/activity.dart';
import 'package:learn_stream_builder/view/products_view/products_view.dart';
import 'package:learn_stream_builder/view/single_user_view/single_user_view.dart';
import 'package:learn_stream_builder/view/statefulbuilder/my_stateful_builder.dart';
import 'package:learn_stream_builder/view/statefulbuilder/tanpa_stateful_builder.dart';
import 'package:learn_stream_builder/view/user_regres/user_regres.dart';
import 'package:learn_stream_builder/view/users_view/users_view.dart';
import 'package:provider/provider.dart';

import '../user_regres/user_regres_stateless.dart';

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
      floatingActionButton: Wrap(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("List Product"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductsView(),
                      ));
                },
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Single"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SingleUserView(),
                      ));
                },
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                label: const Text("Users"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UsersView(),
                      ));
                },
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.next_week),
              label: const Text("Tanpa Stateful Builder"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TanpaStateFulBuilder(),
                    ));
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.next_week),
              label: const Text("Stateful Builder"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyStatefulBuilder(),
                    ));
              },
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.next_week),
              label: const Text("Regres"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserRegres(),
                    ));
              },
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.next_week),
              label: const Text("Regres Less"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserRegresStateless(),
                    ));
              },
            ),
          ]),
        ],
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
