import 'package:client/models/movie_model.dart';
import 'package:flutter/material.dart';

class WatchListProvider extends ChangeNotifier {
  final List<MovieModel> _watchList = [];

  List<MovieModel> get watchList => _watchList;

  void addMovie(MovieModel mov) {
    _watchList.add(mov);
    notifyListeners();
  }

  void removeMovieByImdbId(String imdbId) {
    _watchList.removeWhere((element) => element.imdbId == imdbId);
    notifyListeners();
  }

  bool isMovieAdded(String imdbId) {
    int index = _watchList.indexWhere((element) => element.imdbId == imdbId);
    return index != -1;
  }
}
