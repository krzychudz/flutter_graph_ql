// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/film_details/film_details.dart';

part 'film_details_cubit_state.freezed.dart';
part 'film_details_cubit_state.g.dart';

@freezed
class FilmDetailsState with _$FilmDetailsState {
  factory FilmDetailsState({
    FilmDetails? filmDetails,
  }) = _FilmDetailsState;

  factory FilmDetailsState.fromJson(Map<String, dynamic> json) =>
      _$FilmDetailsStateFromJson(json);
}
