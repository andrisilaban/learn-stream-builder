import 'package:flutter/material.dart';
import 'package:learn_stream_builder/models/user/users_model.dart';
import 'package:learn_stream_builder/services/User/user_service.dart';

class SingleUserRegres extends StatelessWidget {
  const SingleUserRegres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('SINGLE USER REGRES'),
      ),
      body: FutureBuilder(
        future: UserService.fetchSingleUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return const Text('ERROR BRO');
          }
          UserModel user = snapshot.data!;
          return Center(
            child: Card(
              child: ListTile(
                title: Text(user.firstName),
                subtitle: Text(user.lastName),
              ),
            ),
          );
        },
      ),
    );
  }
}
