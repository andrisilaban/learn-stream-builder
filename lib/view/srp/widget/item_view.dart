import 'package:flutter/material.dart';
import 'package:learn_stream_builder/abstract/http_abstract.dart';
import 'package:learn_stream_builder/models/item/item.dart';

class ItemView extends StatefulWidget {
  final HttpAbstract<Item> request;
  const ItemView({super.key, required this.request});

  @override
  State<ItemView> createState() => _ItemViewState();
}

class _ItemViewState extends State<ItemView> {
  Future<Item> _getData() async {
    return await widget.request.execute();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Item>(
      future: _getData(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Container(child: const Text('Error')));
        }
        if (snapshot.hasData) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(snapshot.data!.id.toString()),
                Text(snapshot.data!.userId.toString()),
                Text(snapshot.data!.title.toString()),
                Text(snapshot.data!.body.toString()),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
