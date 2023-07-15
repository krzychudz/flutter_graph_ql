// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/film_details/film_details.dart';

part 'film_details_cubit_state.freezed.dart';

@freezed
sealed class FilmDetailsCubitState with _$FilmDetailsCubitState {
  const factory FilmDetailsCubitState.data(FilmDetails filmDetails) = Data;
  const factory FilmDetailsCubitState.loading() = Loading;
  const factory FilmDetailsCubitState.error([String? message]) = Error;
}
