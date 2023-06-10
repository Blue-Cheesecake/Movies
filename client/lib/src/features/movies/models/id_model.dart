import 'package:freezed_annotation/freezed_annotation.dart';

part 'id_model.freezed.dart';
part 'id_model.g.dart';

@freezed
class IdModel with _$IdModel {
  const factory IdModel({
    required final int timestamp,
    required final DateTime date,
  }) = _IdModel;

  factory IdModel.fromJson(Map<String, Object?> json) =>
      _$IdModelFromJson(json);
}
