// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../films_response/films_response.dart';

part 'all_films_response.freezed.dart';
part 'all_films_response.g.dart';

@Freezed(toJson: false)
class AllFilmsResponse with _$AllFilmsResponse {
  factory AllFilmsResponse({
    required FilmsResponse allFilms,
  }) = _AllFilmsResponse;

  factory AllFilmsResponse.fromJson(Map<String, dynamic> json) =>
      _$AllFilmsResponseFromJson(json);
}
