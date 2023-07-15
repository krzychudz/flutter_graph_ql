// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_graph_ql/core/models/film_details/film_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'film_details_response.freezed.dart';
part 'film_details_response.g.dart';

@Freezed(toJson: false)
class FilmDetailsResponse with _$FilmDetailsResponse {
  factory FilmDetailsResponse({
    required FilmDetails film,
  }) = _FilmDetailsResponse;

  factory FilmDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$FilmDetailsResponseFromJson(json);
}
