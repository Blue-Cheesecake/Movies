import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/data.dart';

final watchListProvider = StateNotifierProvider<WatchListNotifier, List<MovieModel>>((ref) {
  return WatchListNotifier();
});

class WatchListNotifier extends StateNotifier<List<MovieModel>> {
  WatchListNotifier() : super(<MovieModel>[]);

  void addMovie(MovieModel movie) {
    state = [...state, movie];
  }

  void removeMovieByImdbId(String imdbId) {
    state = state.where((mov) => mov.imdbId != imdbId).toList();
  }

  bool isMovieAdded(String imdbId) {
    int index = state.indexWhere((mov) => mov.imdbId == imdbId);
    return index != -1;
  }
}
