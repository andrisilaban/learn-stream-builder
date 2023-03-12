import 'package:flutter/material.dart';
import 'package:learn_stream_builder/service/http_service.dart';
import 'package:learn_stream_builder/view/srp/widget/item_view.dart';

class SRPView extends StatelessWidget {
  const SRPView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SRP Principle')),
      body: ItemView(
        request: HTTPServiceku('https://jsonplaceholder.typicode.com/posts/10'),
      ),
    );
  }
}
