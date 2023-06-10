import 'package:client/models/movie_model.dart';

abstract class IMovieRepository {
  Future<List<MovieModel>> fetchAllMovie();
}
