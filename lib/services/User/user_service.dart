import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:learn_stream_builder/models/user/users_model.dart';

class UserService {
  static const baseUrl = 'https://reqres.in/api';

  static Future<List<UserModel>> fetchUser() async {
    List<UserModel> users = [];
    try {
      final response = await get(Uri.parse('$baseUrl/users?page=2'));
      final body = response.body;
      final result = jsonDecode(body);
      users = List<UserModel>.from(
        result['data'].map(
          (user) => UserModel.fromJson(user),
        ),
      );
      log('RESPONSE ${body.runtimeType}');
      log('RESPONSE 2 ${result.runtimeType}');
      log('RESPONSE 3 $users');
      log('RESPONSE 5 ${users.runtimeType}');
      // log('RESPONSE $body');
      // log('RESPONSE 2 $result');
      // log('RESPONSE 3 $users');
      // log('RESPONSE 5 ${users.runtimeType}');
    } catch (e) {
      throw Exception(e.toString());
    }
    return users;
  }
}
