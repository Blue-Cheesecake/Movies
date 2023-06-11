import '../../data/models/models.dart';
import '../irepositories/irepositories.dart';

class GetMovieUseCase {
  final IMovieRepository _repository;

  GetMovieUseCase({required IMovieRepository repository}) : _repository = repository;

  Future<List<MovieModel>> getMovies() async {
    return await _repository.fetchAllMovie();
  }
}
