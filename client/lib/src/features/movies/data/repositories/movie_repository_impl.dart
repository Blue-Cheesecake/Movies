import '../../domain/irepositories/irepositories.dart';
import '../datasources/datasources.dart';
import '../models/models.dart';

class MovieRepository implements IMovieRepository {
  final MovieRemoteDataSource remoteDataSource;

  MovieRepository({required this.remoteDataSource});

  @override
  Future<List<MovieModel>> fetchAllMovie() {
    return remoteDataSource.getMovies();
  }
}
