import 'package:client/models/movie_model.dart';
import 'package:client/repositories/movie_repository.dart';

class MovieService {
  final MovieRepository movieRepository;

  MovieService(this.movieRepository);

  Future<List<MovieModel>> getAllMovie() async {
    await movieRepository.fetchAllMovie();
    return [];
  }
}
