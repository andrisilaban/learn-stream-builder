import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/hitung_notifier.dart';

class BodyNotifier extends StatelessWidget {
  const BodyNotifier({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NOTIFIER'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('PRIME'),
            Text('${context.watch<HitungNotifier>().getAngka}'),
            Consumer<HitungNotifier>(
              builder: (_, value, __) {
                return Text('${context.read<HitungNotifier>().getAngka}');
              },
            ),
            TextButton(
              onPressed: () {
                context.read<HitungNotifier>().setAngka(1);
              },
              child: const Text('Tap Me, Please'),
            ),
          ],
        ),
      ),
    );
  }
}
