import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_data.freezed.dart';
part 'single_data.g.dart';

@freezed
class SingleData with _$SingleData {
  factory SingleData({
    int? id,
    String? email,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? avatar,
  }) = _SingleData;

  factory SingleData.fromJson(Map<String, dynamic> json) =>
      _$SingleDataFromJson(json);
}
