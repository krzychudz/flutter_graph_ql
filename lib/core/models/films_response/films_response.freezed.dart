// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'films_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilmsResponse _$FilmsResponseFromJson(Map<String, dynamic> json) {
  return _FilmsResponse.fromJson(json);
}

/// @nodoc
mixin _$FilmsResponse {
  List<Film> get films => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilmsResponseCopyWith<FilmsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmsResponseCopyWith<$Res> {
  factory $FilmsResponseCopyWith(
          FilmsResponse value, $Res Function(FilmsResponse) then) =
      _$FilmsResponseCopyWithImpl<$Res, FilmsResponse>;
  @useResult
  $Res call({List<Film> films});
}

/// @nodoc
class _$FilmsResponseCopyWithImpl<$Res, $Val extends FilmsResponse>
    implements $FilmsResponseCopyWith<$Res> {
  _$FilmsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? films = null,
  }) {
    return _then(_value.copyWith(
      films: null == films
          ? _value.films
          : films // ignore: cast_nullable_to_non_nullable
              as List<Film>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilmsResponseCopyWith<$Res>
    implements $FilmsResponseCopyWith<$Res> {
  factory _$$_FilmsResponseCopyWith(
          _$_FilmsResponse value, $Res Function(_$_FilmsResponse) then) =
      __$$_FilmsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Film> films});
}

/// @nodoc
class __$$_FilmsResponseCopyWithImpl<$Res>
    extends _$FilmsResponseCopyWithImpl<$Res, _$_FilmsResponse>
    implements _$$_FilmsResponseCopyWith<$Res> {
  __$$_FilmsResponseCopyWithImpl(
      _$_FilmsResponse _value, $Res Function(_$_FilmsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? films = null,
  }) {
    return _then(_$_FilmsResponse(
      films: null == films
          ? _value._films
          : films // ignore: cast_nullable_to_non_nullable
              as List<Film>,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FilmsResponse implements _FilmsResponse {
  _$_FilmsResponse({required final List<Film> films}) : _films = films;

  factory _$_FilmsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FilmsResponseFromJson(json);

  final List<Film> _films;
  @override
  List<Film> get films {
    if (_films is EqualUnmodifiableListView) return _films;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_films);
  }

  @override
  String toString() {
    return 'FilmsResponse(films: $films)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilmsResponse &&
            const DeepCollectionEquality().equals(other._films, _films));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_films));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilmsResponseCopyWith<_$_FilmsResponse> get copyWith =>
      __$$_FilmsResponseCopyWithImpl<_$_FilmsResponse>(this, _$identity);
}

abstract class _FilmsResponse implements FilmsResponse {
  factory _FilmsResponse({required final List<Film> films}) = _$_FilmsResponse;

  factory _FilmsResponse.fromJson(Map<String, dynamic> json) =
      _$_FilmsResponse.fromJson;

  @override
  List<Film> get films;
  @override
  @JsonKey(ignore: true)
  _$$_FilmsResponseCopyWith<_$_FilmsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
