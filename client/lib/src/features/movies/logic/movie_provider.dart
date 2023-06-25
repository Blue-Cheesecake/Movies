// repo
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/data.dart';
import '../domain/domain.dart';
import 'logic.dart';

final movieRepositoryProvider = Provider.autoDispose<IMovieRepository>((ref) {
  return MovieRepository(dataSource: MovieRetrofitDataSource());
});

// usecase
final getMovieUseCseProvider = Provider.autoDispose<GetMovieUseCase>((ref) {
  return GetMovieUseCase(repository: ref.watch(movieRepositoryProvider));
});

// state notifier
final movieStateNotifierProvider = StateNotifierProvider.autoDispose<MovieStateNotifier, MovieState>((ref) {
  final getMovieUseCase = ref.watch(getMovieUseCseProvider);
  return MovieStateNotifier(getMovieUseCase);
});
