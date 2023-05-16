import 'dart:developer';

import 'package:client/models/movie_model.dart';
import 'package:client/repositories/movie_repository.dart';

class MovieService {
  final MovieRepository _movieRepository;

  MovieService(this._movieRepository);

  Future<List<MovieModel>> getAllMovie() async {
    await Future.delayed(const Duration(seconds: 1));
    final result = await _movieRepository.fetchAllMovie();
    log(result.toString());
    return result;
  }
}
