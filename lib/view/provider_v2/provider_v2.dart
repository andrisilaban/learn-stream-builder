import 'package:flutter/material.dart';
import 'package:learn_stream_builder/view/provider_v2/body_provider.dart';
import 'package:learn_stream_builder/view/provider_v2/models/hitung_provider.dart';
import 'package:provider/provider.dart';

import 'body_notifier.dart';
import 'models/hitung_notifier.dart';

class ProviderV2 extends StatelessWidget {
  const ProviderV2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PROV'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        ChangeNotifierProvider<HitungNotifier>(
                      create: (context) => HitungNotifier(),
                      child: const Scaffold(
                        body: BodyNotifier(),
                      ),
                    ),
                  ));
                },
                icon: const Icon(Icons.onetwothree_sharp),
                label: const Text('NOTIFIER')),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Provider<HitungProvider>(
                      create: (context) => HitungProvider(),
                      child: const Scaffold(
                        body: BodyProvider(),
                      ),
                    ),
                  ));
                },
                icon: const Icon(Icons.onetwothree_sharp),
                label: const Text('Provider')),
          ],
        ),
      ),
    );
  }
}
