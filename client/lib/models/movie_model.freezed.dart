// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  IdModel get id => throw _privateConstructorUsedError;
  String get imdbId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get releaseDate => throw _privateConstructorUsedError;
  String get trailerLink => throw _privateConstructorUsedError;
  String get poster => throw _privateConstructorUsedError;
  List<String> get genres => throw _privateConstructorUsedError;
  List<String> get backdrops => throw _privateConstructorUsedError;
  List<String> get reviewsId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call(
      {IdModel id,
      String imdbId,
      String title,
      DateTime releaseDate,
      String trailerLink,
      String poster,
      List<String> genres,
      List<String> backdrops,
      List<String> reviewsId});

  $IdModelCopyWith<$Res> get id;
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imdbId = null,
    Object? title = null,
    Object? releaseDate = null,
    Object? trailerLink = null,
    Object? poster = null,
    Object? genres = null,
    Object? backdrops = null,
    Object? reviewsId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IdModel,
      imdbId: null == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      trailerLink: null == trailerLink
          ? _value.trailerLink
          : trailerLink // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      backdrops: null == backdrops
          ? _value.backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reviewsId: null == reviewsId
          ? _value.reviewsId
          : reviewsId // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IdModelCopyWith<$Res> get id {
    return $IdModelCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MovieModelCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$_MovieModelCopyWith(
          _$_MovieModel value, $Res Function(_$_MovieModel) then) =
      __$$_MovieModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IdModel id,
      String imdbId,
      String title,
      DateTime releaseDate,
      String trailerLink,
      String poster,
      List<String> genres,
      List<String> backdrops,
      List<String> reviewsId});

  @override
  $IdModelCopyWith<$Res> get id;
}

/// @nodoc
class __$$_MovieModelCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$_MovieModel>
    implements _$$_MovieModelCopyWith<$Res> {
  __$$_MovieModelCopyWithImpl(
      _$_MovieModel _value, $Res Function(_$_MovieModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imdbId = null,
    Object? title = null,
    Object? releaseDate = null,
    Object? trailerLink = null,
    Object? poster = null,
    Object? genres = null,
    Object? backdrops = null,
    Object? reviewsId = null,
  }) {
    return _then(_$_MovieModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as IdModel,
      imdbId: null == imdbId
          ? _value.imdbId
          : imdbId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      trailerLink: null == trailerLink
          ? _value.trailerLink
          : trailerLink // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
      genres: null == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>,
      backdrops: null == backdrops
          ? _value._backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reviewsId: null == reviewsId
          ? _value._reviewsId
          : reviewsId // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieModel implements _MovieModel {
  const _$_MovieModel(
      {required this.id,
      required this.imdbId,
      required this.title,
      required this.releaseDate,
      required this.trailerLink,
      required this.poster,
      required final List<String> genres,
      required final List<String> backdrops,
      required final List<String> reviewsId})
      : _genres = genres,
        _backdrops = backdrops,
        _reviewsId = reviewsId;

  factory _$_MovieModel.fromJson(Map<String, dynamic> json) =>
      _$$_MovieModelFromJson(json);

  @override
  final IdModel id;
  @override
  final String imdbId;
  @override
  final String title;
  @override
  final DateTime releaseDate;
  @override
  final String trailerLink;
  @override
  final String poster;
  final List<String> _genres;
  @override
  List<String> get genres {
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genres);
  }

  final List<String> _backdrops;
  @override
  List<String> get backdrops {
    if (_backdrops is EqualUnmodifiableListView) return _backdrops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_backdrops);
  }

  final List<String> _reviewsId;
  @override
  List<String> get reviewsId {
    if (_reviewsId is EqualUnmodifiableListView) return _reviewsId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviewsId);
  }

  @override
  String toString() {
    return 'MovieModel(id: $id, imdbId: $imdbId, title: $title, releaseDate: $releaseDate, trailerLink: $trailerLink, poster: $poster, genres: $genres, backdrops: $backdrops, reviewsId: $reviewsId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imdbId, imdbId) || other.imdbId == imdbId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.trailerLink, trailerLink) ||
                other.trailerLink == trailerLink) &&
            (identical(other.poster, poster) || other.poster == poster) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality()
                .equals(other._backdrops, _backdrops) &&
            const DeepCollectionEquality()
                .equals(other._reviewsId, _reviewsId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      imdbId,
      title,
      releaseDate,
      trailerLink,
      poster,
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(_backdrops),
      const DeepCollectionEquality().hash(_reviewsId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieModelCopyWith<_$_MovieModel> get copyWith =>
      __$$_MovieModelCopyWithImpl<_$_MovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieModelToJson(
      this,
    );
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
      {required final IdModel id,
      required final String imdbId,
      required final String title,
      required final DateTime releaseDate,
      required final String trailerLink,
      required final String poster,
      required final List<String> genres,
      required final List<String> backdrops,
      required final List<String> reviewsId}) = _$_MovieModel;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$_MovieModel.fromJson;

  @override
  IdModel get id;
  @override
  String get imdbId;
  @override
  String get title;
  @override
  DateTime get releaseDate;
  @override
  String get trailerLink;
  @override
  String get poster;
  @override
  List<String> get genres;
  @override
  List<String> get backdrops;
  @override
  List<String> get reviewsId;
  @override
  @JsonKey(ignore: true)
  _$$_MovieModelCopyWith<_$_MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}
