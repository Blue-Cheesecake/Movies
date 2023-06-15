import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/domain.dart';
import 'models.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel implements IMovieEntity {
  const factory MovieModel({
    required final IdModel id,
    required final String imdbId,
    required final String title,
    required final DateTime releaseDate,
    required final String trailerLink,
    required final String poster,
    required final List<String> genres,
    required final List<String> backdrops,
    required final List<String> reviewsId,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json);
}
