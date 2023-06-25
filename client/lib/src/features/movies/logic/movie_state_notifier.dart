import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/domain.dart';
import 'logic.dart';

class MovieStateNotifier extends StateNotifier<MovieState> {
  MovieStateNotifier(this._getMovieUseCase) : super(MovieState.initial());
  final GetMovieUseCase _getMovieUseCase;

  Future<void> getMovie() async {
    final response = _getMovieUseCase.getMovies();
    response.then((data) {
      state = MovieState.data(data: data);
    }).onError((error, stackTrace) {
      state = MovieState.initial();
    });
  }
}
