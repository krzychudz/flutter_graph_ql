// ignore_for_file: invalid_annotation_target, depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

part 'film.freezed.dart';
part 'film.g.dart';

@Freezed(toJson: false)
class Film with _$Film {
  factory Film({
    required String id,
    @JsonKey(name: 'episodeID') required int episodeId,
    required String title,
    required String director,
    required String releaseDate,
  }) = _Film;

  factory Film.fromJson(Map<String, dynamic> json) => _$FilmFromJson(json);
}
