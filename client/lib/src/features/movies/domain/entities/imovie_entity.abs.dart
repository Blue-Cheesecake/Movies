import 'entities.dart';

abstract class IMovieEntity {
  final IIdEntity id;
  final String imdbId;
  final String title;
  final DateTime releaseDate;
  final String trailerLink;
  final String poster;
  final List<String> genres;
  final List<String> backdrops;
  final List<String> reviewsId;

  const IMovieEntity({
    required this.id,
    required this.imdbId,
    required this.title,
    required this.releaseDate,
    required this.trailerLink,
    required this.poster,
    required this.genres,
    required this.backdrops,
    required this.reviewsId,
  });
}
