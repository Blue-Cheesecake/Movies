import 'package:client/datasources/movie_remote_datasource.dart';
import 'package:client/models/movie_model.dart';
import 'package:client/repositories/imovie_repository.dart';

class MovieRepository implements IMovieRepository {
  final MovieRemoteDataSource remoteDataSource;

  MovieRepository({required this.remoteDataSource});

  @override
  Future<List<MovieModel>> fetchAllMovie() async {
    return await remoteDataSource.getMovies();
  }
}
