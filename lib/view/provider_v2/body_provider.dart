import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/hitung_provider.dart';

class BodyProvider extends StatelessWidget {
  const BodyProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PROVIDER'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'VIEW TETAP WALAUPUN DI KLIK',
              textAlign: TextAlign.center,
            ),
            const Text('PRIME'),
            Text('${context.watch<HitungProvider>().getAngka}'),
            // Consumer<HitungProvider> = Provider.of<HitungProvider>
            Consumer<HitungProvider>(
              builder: (_, value, __) {
                return Text('${context.read<HitungProvider>().getAngka}');
              },
            ),
            TextButton(
              onPressed: () {
                context.read<HitungProvider>().setAngka(1);
              },
              child: const Text('Tap Me, Please'),
            ),
          ],
        ),
      ),
    );
  }
}
