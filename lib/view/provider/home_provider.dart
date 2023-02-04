import 'package:flutter/material.dart';
import 'package:learn_stream_builder/models/person.dart';
import 'package:learn_stream_builder/view/provider/home_nav.dart';
import 'package:learn_stream_builder/view/provider/person_page.dart';
import 'package:provider/provider.dart';

class HomeProvider extends StatelessWidget {
  const HomeProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => Person(),
      child: const Scaffold(
        body: HomeNav(),
      ),
    );
  }
}
