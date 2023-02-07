import 'my_base_response.dart';

class MyBaseResponseExtend extends MyBaseResponse {
  final int number = 0;
  // MyBaseResponseExtend(super.statusCode);
  MyBaseResponseExtend() : super(9);
}
