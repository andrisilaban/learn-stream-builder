import 'package:flutter/material.dart';
import 'package:learn_stream_builder/view/provider_store/models/my_cart.dart';
import 'package:provider/provider.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ITEM LIST')),
      body: Center(
        child: Consumer<MyCart>(builder: (_, snapshot, __) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Jumlah Item : ${snapshot.getItem()}',
              ),
              const SizedBox(height: 10),
              ElevatedButton.icon(
                onPressed: () {
                  snapshot.remoteItem();
                },
                icon: Icon(Icons.remove),
                label: Text('REMOVE'),
              ),
            ],
          );
        }),
      ),
    );
  }
}
