import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart';
import 'package:learn_stream_builder/models/user/users_model.dart';

class UserService {
  /*
import 'dart:convert';

class Person {
  Person dengan 3 konstruktor
  String? name;
  int? age;

  Person(this.name, this.age);

  Person.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
  }

  Person.fromJsonString(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    name = json['name'];
    age = json['age'];
  }
}

void main() {
  String jsonString1 = '{"name": "Togap", "age": 65}';
  String jsonString3 =
      '[{"name": "Andre", "age": 35},{"name": "Joe", "age": 45}]';

  Person p1 = Person.fromJsonString(jsonString1);
  print("Person 1 name: ${p1.name} Person 1 age: ${p1.age}");
  Person 1 name: Togap Person 1 age: 65

  Person p2 = Person.fromJson(jsonDecode(jsonString1));
  print("Person 2 name: ${p2.name} Person 2 age: ${p2.age}");  
  Person 2 name: Togap Person 2 age: 65

  List<Person> p3 = List<Person>.from(
    jsonDecode(jsonString3).map(
      (person) => Person.fromJson(person),
    ),
  );
  for (var person in p3) {
    print('NAME : ${person.name} AGE : ${person.age}');
    NAME : Andre AGE : 35
    NAME : Joe AGE : 45
  }
}
  */

  static const baseUrl = 'https://reqres.in';

  static Future<List<UserModel>> fetchUser() async {
    List<UserModel> users = [];
    try {
      final response = await get(Uri.parse('$baseUrl/api/users?page=2'));
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

  static Future<UserModel> fetchSingleUser() async {
    try {
      String temp = '';
      final response = await get(Uri.parse('$baseUrl/api/users/2'));
      log('RESPONSE fetchSingleUser $response');
      final result = jsonDecode(response.body);
      String result2 = response.body;
      List<String> parts = result2.split(',');
      for (var part in parts) {
        temp += '$part\n';
      }

      UserModel user = UserModel.fromJson(result['data']);
      log('RESPONSE fetchSingleUser user $user');
      log('RESPONSE fetchSingleUser result $result');
      log('RESPONSE SPLIT $parts');
      log('RESPONSE SPLIT $temp');
      return user;
    } catch (e) {
      log('RESPONSE fetchSingleUser user ${e.toString()}');
      throw Exception(e.toString());
    }
  }
}
