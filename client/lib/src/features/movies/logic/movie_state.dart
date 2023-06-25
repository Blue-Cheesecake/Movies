import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/domain.dart';

part 'movie_state.freezed.dart';

@freezed
class MovieState with _$MovieState {
  const MovieState._();

  factory MovieState.initial() = _MovieStateInitial;
  factory MovieState.data({required IMovieEntity data}) = _MovieStateData;
  factory MovieState.error() = _MovieStateError;
}
