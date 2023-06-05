// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'id_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IdModel _$IdModelFromJson(Map<String, dynamic> json) {
  return _IdModel.fromJson(json);
}

/// @nodoc
mixin _$IdModel {
  int get timestamp => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdModelCopyWith<IdModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdModelCopyWith<$Res> {
  factory $IdModelCopyWith(IdModel value, $Res Function(IdModel) then) =
      _$IdModelCopyWithImpl<$Res, IdModel>;
  @useResult
  $Res call({int timestamp, DateTime date});
}

/// @nodoc
class _$IdModelCopyWithImpl<$Res, $Val extends IdModel>
    implements $IdModelCopyWith<$Res> {
  _$IdModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdModelCopyWith<$Res> implements $IdModelCopyWith<$Res> {
  factory _$$_IdModelCopyWith(
          _$_IdModel value, $Res Function(_$_IdModel) then) =
      __$$_IdModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int timestamp, DateTime date});
}

/// @nodoc
class __$$_IdModelCopyWithImpl<$Res>
    extends _$IdModelCopyWithImpl<$Res, _$_IdModel>
    implements _$$_IdModelCopyWith<$Res> {
  __$$_IdModelCopyWithImpl(_$_IdModel _value, $Res Function(_$_IdModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? date = null,
  }) {
    return _then(_$_IdModel(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IdModel implements _IdModel {
  const _$_IdModel({required this.timestamp, required this.date});

  factory _$_IdModel.fromJson(Map<String, dynamic> json) =>
      _$$_IdModelFromJson(json);

  @override
  final int timestamp;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'IdModel(timestamp: $timestamp, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdModel &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timestamp, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdModelCopyWith<_$_IdModel> get copyWith =>
      __$$_IdModelCopyWithImpl<_$_IdModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdModelToJson(
      this,
    );
  }
}

abstract class _IdModel implements IdModel {
  const factory _IdModel(
      {required final int timestamp,
      required final DateTime date}) = _$_IdModel;

  factory _IdModel.fromJson(Map<String, dynamic> json) = _$_IdModel.fromJson;

  @override
  int get timestamp;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_IdModelCopyWith<_$_IdModel> get copyWith =>
      throw _privateConstructorUsedError;
}
