import 'package:client/models/movie_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// class WatchListProvider extends ChangeNotifier {
//   final List<MovieModel> _watchList = [];

//   List<MovieModel> get watchList => _watchList;

//   void addMovie(MovieModel mov) {
//     _watchList.add(mov);
//     notifyListeners();
//   }

//   void removeMovieByImdbId(String imdbId) {
//     _watchList.removeWhere((element) => element.imdbId == imdbId);
//     notifyListeners();
//   }

//   bool isMovieAdded(String imdbId) {
//     int index = _watchList.indexWhere((element) => element.imdbId == imdbId);
//     return index != -1;
//   }
// }

final watchListProvider =
    StateNotifierProvider<WatchListNotifier, List<MovieModel>>((ref) {
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
