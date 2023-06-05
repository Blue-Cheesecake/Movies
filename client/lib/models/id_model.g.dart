// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IdModel _$$_IdModelFromJson(Map<String, dynamic> json) => _$_IdModel(
      timestamp: json['timestamp'] as int,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_IdModelToJson(_$_IdModel instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'date': instance.date.toIso8601String(),
    };
