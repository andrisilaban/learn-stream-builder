import 'dart:convert';
import 'dart:developer';

import 'package:learn_stream_builder/abstract/http_abstract.dart';
import 'package:http/http.dart';
import '../models/item/item.dart';

class HTTPServiceku implements HttpAbstract<Item> {
  final String url;

  HTTPServiceku(this.url);

  @override
  Future<Item> execute() async {
    final response = await get(Uri.parse(url));
    final result = Item.fromJson(jsonDecode(response.body));
    log('RESULT $response');
    log('RESULT 2 ${response.body}');
    return result;
  }
}
