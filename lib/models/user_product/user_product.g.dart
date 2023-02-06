// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProduct _$$_UserProductFromJson(Map<String, dynamic> json) =>
    _$_UserProduct(
      id: json['id'] as int?,
      email: json['email'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_UserProductToJson(_$_UserProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
    };
