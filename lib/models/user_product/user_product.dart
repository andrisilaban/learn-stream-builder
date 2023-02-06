import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_product.freezed.dart';
part 'user_product.g.dart';

@freezed
class UserProduct with _$UserProduct {
  factory UserProduct({
    int? id,
    String? email,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? avatar,
  }) = _UserProduct;

  factory UserProduct.fromJson(Map<String, dynamic> json) =>
      _$UserProductFromJson(json);
}
