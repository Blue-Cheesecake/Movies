// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IdModel _$$_IdModelFromJson(Map<String, dynamic> json) => _$_IdModel(
      timestamp: json['timestamp'] as int,
      data: DateTime.parse(json['data'] as String),
    );

Map<String, dynamic> _$$_IdModelToJson(_$_IdModel instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'data': instance.data.toIso8601String(),
    };
