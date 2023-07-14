// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../film/film.dart';

part 'films_response.freezed.dart';
part 'films_response.g.dart';

@Freezed(toJson: false)
class FilmsResponse with _$FilmsResponse {
  factory FilmsResponse({
    required List<Film> films,
  }) = _FilmsResponse;

  factory FilmsResponse.fromJson(Map<String, dynamic> json) =>
      _$FilmsResponseFromJson(json);
}
