import 'package:freezed_annotation/freezed_annotation.dart';

import 'all.dart';
import 'all_dataku.dart';
import 'single_data.dart';
import 'support.dart';

part 'list_users.freezed.dart';
part 'list_users.g.dart';

@freezed
class ListUsers with _$ListUsers {
  factory ListUsers({
    @JsonKey(name: 'my_page') int? myPage,
    int? page,
    String? namaku,
    @JsonKey(name: 'nama_mu') String? namaMu,
    @JsonKey(name: 'per_page') int? perPage,
    int? total,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'single_data') SingleData? singleData,
    @JsonKey(name: 'all_dataku') List<AllDataku>? allDataku,
    List<All>? all,
    Support? support,
  }) = _ListUsers;

  factory ListUsers.fromJson(Map<String, dynamic> json) =>
      _$ListUsersFromJson(json);
}
