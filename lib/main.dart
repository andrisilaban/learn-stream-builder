import 'package:flutter/material.dart';
import 'package:learn_stream_builder/view/change_notofier_provider/home_change_notifier_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belajar Sampai Keren',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeChangeNotifierProvider(),
    );
  }
}
