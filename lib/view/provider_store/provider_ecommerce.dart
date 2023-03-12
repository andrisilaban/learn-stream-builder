import 'package:flutter/material.dart';
import 'package:learn_stream_builder/view/provider_store/models/my_cart.dart';
import 'package:learn_stream_builder/view/provider_store/models/temp_value.dart';
import 'package:learn_stream_builder/view/provider_store/models/user_status.dart';
import 'package:learn_stream_builder/view/provider_store/product_cart.dart';
import 'package:provider/provider.dart';

class ProviderEcommerce extends StatefulWidget {
  const ProviderEcommerce({super.key});

  @override
  State<ProviderEcommerce> createState() => _ProviderEcommerceState();
}

class _ProviderEcommerceState extends State<ProviderEcommerce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PROVIDER ECOMERCE'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<MyCart>().addItem(1);
            },
            icon: const Icon(Icons.free_breakfast),
          ),
          Consumer<UserStatus>(builder: (_, snapshot, __) {
            return TextButton(
              onPressed: () {
                snapshot.changeStatus();
              },
              child: Text(
                'Sign In ${snapshot.getStatus}',
                style: TextStyle(color: ThemeData().cardColor),
              ),
            );
          }),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.blue[100],
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'TOTAL COUNT ${context.watch<MyCart>().getItem()}',
                    ),
                    Text(
                        'TEMP PROVIDER ${context.read<TempValue>().getTempValue}'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            LayoutBuilder(
              builder: (p1, p2) {
                return SizedBox(
                  width: p2.maxWidth,
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  context.read<MyCart>().setIndex(index);
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => ProductCart(),
                                    ),
                                  );
                                },
                                child: Container(
                                  width: p2.maxWidth / 2,
                                  color: Colors.blue[100],
                                  child: Center(
                                    child: Text(
                                      '${(p2.maxWidth / 2).toStringAsFixed(0)}',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Product Name',
                            ),
                            ElevatedButton(
                              onPressed: () {
                                context.read<MyCart>().addItem(index);
                              },
                              child: Text('Add To Chart'),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: context.read<MyCart>().item.length,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Consumer(builder: (_, snapshot, __) {
                    return ElevatedButton(
                      onPressed: () {
                        context.read<UserStatus>().changeStatus();
                      },
                      child: Text(
                        context.watch<UserStatus>().getStatus
                            ? 'SIGN IN'
                            : 'SIGN OUT',
                      ),
                    );
                  }),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<TempValue>().addTempValue(1);
                    },
                    child: Text('ADD TEMP PROVIDER'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
