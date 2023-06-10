import 'package:client/models/movie_model.dart';
import 'package:client/repositories/imovie_repository.dart';

class GetMovieUseCase {
  final IMovieRepository _repository;

  GetMovieUseCase({required IMovieRepository repository})
      : _repository = repository;

  Future<List<MovieModel>> getMovies() async {
    return await _repository.fetchAllMovie();
  }
}
