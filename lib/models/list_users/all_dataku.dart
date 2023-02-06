import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_dataku.freezed.dart';
part 'all_dataku.g.dart';

@freezed
class AllDataku with _$AllDataku {
  factory AllDataku({
    int? id,
    String? email,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? avatar,
  }) = _AllDataku;

  factory AllDataku.fromJson(Map<String, dynamic> json) =>
      _$AllDatakuFromJson(json);
}
