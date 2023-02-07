import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learn_stream_builder/services/User/user_service.dart';

import '../../models/user/users_model.dart';

class UserRegresStateless extends StatelessWidget {
  const UserRegresStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Regres Stateless'),
      ),
      body: FutureBuilder(
        future: UserService.fetchUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Container();
          }
          List<UserModel> users = snapshot.data!;
          log('RESPONSE 6 ${snapshot.data.runtimeType}}');
          log('RESPONSE 7 ${snapshot.data}}');
          log('RESPONSE 7 ${snapshot.data}}');
          return Column(
            children: [
              Image.network(
                'https://i.ibb.co/QrTHd59/woman.jpg',
                // 'https://upload.wikimedia.org/wikipedia/commons/2/2d/Snake_River_%285mb%29.jpg',
                fit: BoxFit.fill,
                loadingBuilder: (context, child, loadingProgress) {
                  log('LOADING PROGRESS $loadingProgress');
                  if (loadingProgress != null) {
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  }
                  return child;
                },
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    var user = users[index];
                    return Card(
                      child: ListTile(
                        title: Text(user.firstName),
                        subtitle: Text(user.email),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
