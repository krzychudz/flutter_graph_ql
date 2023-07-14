// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
import '../character/character_connection/character_connection.dart';

part 'film_details.freezed.dart';
part 'film_details.g.dart';

@freezed
class FilmDetails with _$FilmDetails {
  factory FilmDetails({
    required String title,
    required String edited,
    required String director,
    required String created,
    required CharacterConnection characterConnection,
  }) = _FilmDetails;

  factory FilmDetails.fromJson(Map<String, dynamic> json) =>
      _$FilmDetailsFromJson(json);
}
