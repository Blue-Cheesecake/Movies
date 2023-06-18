import '../../domain/irepositories/irepositories.dart';
import '../datasources/datasources.dart';
import '../models/models.dart';

class MovieRepository implements IMovieRepository {
  final MovieDataSource dataSource;
  MovieRepository({required this.dataSource});

  @override
  Future<List<MovieModel>> fetchAllMovie() {
    return dataSource.getMovies();
  }
}
