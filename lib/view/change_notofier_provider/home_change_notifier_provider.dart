import 'package:flutter/material.dart';
import 'package:learn_stream_builder/models/activity.dart';
import 'package:learn_stream_builder/view/change_notofier_provider/activity_daily.dart';
import 'package:provider/provider.dart';

class HomeChangeNotifierProvider extends StatelessWidget {
  const HomeChangeNotifierProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => Activity(age: 0, wakeUp: 7.0),
        child: const ActivityDaily(),
      ),
    );
  }
}
