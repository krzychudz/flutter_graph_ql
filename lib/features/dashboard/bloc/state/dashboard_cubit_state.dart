import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/film/film.dart';

part 'dashboard_cubit_state.freezed.dart';

@freezed
sealed class DashboardCubitState with _$DashboardCubitState {
  const factory DashboardCubitState.data(List<Film> films) = Data;
  const factory DashboardCubitState.loading() = Loading;
  const factory DashboardCubitState.error([String? message]) = Error;
}
