import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learn_stream_builder/models/user/users_model.dart';
import 'package:learn_stream_builder/services/User/user_service.dart';

class UserRegres extends StatefulWidget {
  const UserRegres({super.key});

  @override
  State<UserRegres> createState() => _UserRegresState();
}

class _UserRegresState extends State<UserRegres> {
  List<UserModel> users = [];
  bool isLoading = true;
  void fetchUser() async {
    users = await UserService.fetchUser();
    log('RESPONSE 4 $users');
    if (users.isNotEmpty) {
      Future.delayed(
        const Duration(seconds: 2),
        () {
          setState(() {});
          isLoading = false;
        },
      );
    }
  }

  @override
  void initState() {
    super.initState();
    fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('USER REGRES'),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Card(
                  child: ListTile(
                    title: Text(user.email),
                  ),
                );
              },
            ),
    );
  }
}
