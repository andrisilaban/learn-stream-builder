import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:learn_stream_builder/models/user_product/user_product.dart';

class UsersView extends StatelessWidget {
  const UsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('U S E R S'),
      ),
      body: FutureBuilder(
        future: Dio().get(
          'https://reqres.in/api/users?page=2',
          options: Options(
            contentType: 'application/json',
          ),
        ),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) return Container();
          Response response = snapshot.data;
          Map obj = response.data;
          List items = obj['data'];
          debugPrint('ITEMS 0 ${obj['page']}');
          debugPrint('ITEMS 1 $response');
          debugPrint('ITEMS 2 $obj');
          debugPrint('ITEMS 3 $items');
          debugPrint('ITEMS 4 ${items[0]}');

          return ListView.builder(
            itemCount: items.length,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              var item = items[index];
              UserProduct user = UserProduct.fromJson(item);
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    backgroundImage: NetworkImage(
                      user.avatar ?? 'https://i.ibb.co/PGv8ZzG/me.jpg',
                    ),
                  ),
                  title: Text(user.firstName ?? ''),
                  subtitle: Text(user.email ?? 'no@email.com'),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
