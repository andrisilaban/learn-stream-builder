import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

import '../../models/products/product.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('P R O D U C T'),
      ),
      //shortcut future_example
      body: FutureBuilder(
        future: Dio().get(
          "https://dummyjson.com/products",
          options: Options(
            contentType: "application/json",
          ),
        ),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            const Center(child: CircularProgressIndicator());
          }
          if (snapshot.data == null) return Container();
          Response response = snapshot.data;
          Map obj = response.data;
          List items = obj["products"];
          debugPrint('ITEMS 1 $response');
          debugPrint('ITEMS 2 $obj');
          debugPrint('ITEMS 3 $items');
          debugPrint('ITEMS 4 ${items[0]}');
          return ListView.builder(
            itemCount: items.length,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              Text('${items[0]}');
              var item = items[index];
              Product product = Product.fromJson(item);
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    backgroundImage: NetworkImage(
                      product.thumbnail ?? '',
                    ),
                  ),
                  title: Text(product.title ?? ''),
                  subtitle: Text((product.price ?? 0).toString()),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
