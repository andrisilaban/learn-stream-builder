// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'single_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SingleData _$$_SingleDataFromJson(Map<String, dynamic> json) =>
    _$_SingleData(
      id: json['id'] as int?,
      email: json['email'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_SingleDataToJson(_$_SingleData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'avatar': instance.avatar,
    };
