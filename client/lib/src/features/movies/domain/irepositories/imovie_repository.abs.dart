import '../../data/models/models.dart';

abstract class IMovieRepository {
  Future<List<MovieModel>> fetchAllMovie();
}
