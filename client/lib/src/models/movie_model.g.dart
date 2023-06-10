// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieModel _$$_MovieModelFromJson(Map<String, dynamic> json) =>
    _$_MovieModel(
      id: IdModel.fromJson(json['id'] as Map<String, dynamic>),
      imdbId: json['imdbId'] as String,
      title: json['title'] as String,
      releaseDate: DateTime.parse(json['releaseDate'] as String),
      trailerLink: json['trailerLink'] as String,
      poster: json['poster'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      backdrops:
          (json['backdrops'] as List<dynamic>).map((e) => e as String).toList(),
      reviewsId:
          (json['reviewsId'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_MovieModelToJson(_$_MovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'imdbId': instance.imdbId,
      'title': instance.title,
      'releaseDate': instance.releaseDate.toIso8601String(),
      'trailerLink': instance.trailerLink,
      'poster': instance.poster,
      'genres': instance.genres,
      'backdrops': instance.backdrops,
      'reviewsId': instance.reviewsId,
    };
