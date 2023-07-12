// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_films_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllFilmsResponse _$AllFilmsResponseFromJson(Map<String, dynamic> json) {
  return _AllFilmsResponse.fromJson(json);
}

/// @nodoc
mixin _$AllFilmsResponse {
  FilmsResponse get allFilms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllFilmsResponseCopyWith<AllFilmsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllFilmsResponseCopyWith<$Res> {
  factory $AllFilmsResponseCopyWith(
          AllFilmsResponse value, $Res Function(AllFilmsResponse) then) =
      _$AllFilmsResponseCopyWithImpl<$Res, AllFilmsResponse>;
  @useResult
  $Res call({FilmsResponse allFilms});

  $FilmsResponseCopyWith<$Res> get allFilms;
}

/// @nodoc
class _$AllFilmsResponseCopyWithImpl<$Res, $Val extends AllFilmsResponse>
    implements $AllFilmsResponseCopyWith<$Res> {
  _$AllFilmsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allFilms = null,
  }) {
    return _then(_value.copyWith(
      allFilms: null == allFilms
          ? _value.allFilms
          : allFilms // ignore: cast_nullable_to_non_nullable
              as FilmsResponse,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FilmsResponseCopyWith<$Res> get allFilms {
    return $FilmsResponseCopyWith<$Res>(_value.allFilms, (value) {
      return _then(_value.copyWith(allFilms: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AllFilmsResponseCopyWith<$Res>
    implements $AllFilmsResponseCopyWith<$Res> {
  factory _$$_AllFilmsResponseCopyWith(
          _$_AllFilmsResponse value, $Res Function(_$_AllFilmsResponse) then) =
      __$$_AllFilmsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FilmsResponse allFilms});

  @override
  $FilmsResponseCopyWith<$Res> get allFilms;
}

/// @nodoc
class __$$_AllFilmsResponseCopyWithImpl<$Res>
    extends _$AllFilmsResponseCopyWithImpl<$Res, _$_AllFilmsResponse>
    implements _$$_AllFilmsResponseCopyWith<$Res> {
  __$$_AllFilmsResponseCopyWithImpl(
      _$_AllFilmsResponse _value, $Res Function(_$_AllFilmsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allFilms = null,
  }) {
    return _then(_$_AllFilmsResponse(
      allFilms: null == allFilms
          ? _value.allFilms
          : allFilms // ignore: cast_nullable_to_non_nullable
              as FilmsResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_AllFilmsResponse implements _AllFilmsResponse {
  _$_AllFilmsResponse({required this.allFilms});

  factory _$_AllFilmsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_AllFilmsResponseFromJson(json);

  @override
  final FilmsResponse allFilms;

  @override
  String toString() {
    return 'AllFilmsResponse(allFilms: $allFilms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllFilmsResponse &&
            (identical(other.allFilms, allFilms) ||
                other.allFilms == allFilms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, allFilms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllFilmsResponseCopyWith<_$_AllFilmsResponse> get copyWith =>
      __$$_AllFilmsResponseCopyWithImpl<_$_AllFilmsResponse>(this, _$identity);
}

abstract class _AllFilmsResponse implements AllFilmsResponse {
  factory _AllFilmsResponse({required final FilmsResponse allFilms}) =
      _$_AllFilmsResponse;

  factory _AllFilmsResponse.fromJson(Map<String, dynamic> json) =
      _$_AllFilmsResponse.fromJson;

  @override
  FilmsResponse get allFilms;
  @override
  @JsonKey(ignore: true)
  _$$_AllFilmsResponseCopyWith<_$_AllFilmsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
