import 'package:freezed_annotation/freezed_annotation.dart';

part 'all.freezed.dart';
part 'all.g.dart';

@freezed
class All with _$All {
  factory All({
    int? id,
    String? email,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? avatar,
  }) = _All;

  factory All.fromJson(Map<String, dynamic> json) => _$AllFromJson(json);
}
