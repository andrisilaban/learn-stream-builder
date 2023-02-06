// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListUsers _$$_ListUsersFromJson(Map<String, dynamic> json) => _$_ListUsers(
      myPage: json['my_page'] as int?,
      page: json['page'] as int?,
      namaku: json['namaku'] as String?,
      namaMu: json['nama_mu'] as String?,
      perPage: json['per_page'] as int?,
      total: json['total'] as int?,
      totalPages: json['total_pages'] as int?,
      singleData: json['single_data'] == null
          ? null
          : SingleData.fromJson(json['single_data'] as Map<String, dynamic>),
      allDataku: (json['all_dataku'] as List<dynamic>?)
          ?.map((e) => AllDataku.fromJson(e as Map<String, dynamic>))
          .toList(),
      all: (json['all'] as List<dynamic>?)
          ?.map((e) => All.fromJson(e as Map<String, dynamic>))
          .toList(),
      support: json['support'] == null
          ? null
          : Support.fromJson(json['support'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ListUsersToJson(_$_ListUsers instance) =>
    <String, dynamic>{
      'my_page': instance.myPage,
      'page': instance.page,
      'namaku': instance.namaku,
      'nama_mu': instance.namaMu,
      'per_page': instance.perPage,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'single_data': instance.singleData,
      'all_dataku': instance.allDataku,
      'all': instance.all,
      'support': instance.support,
    };
