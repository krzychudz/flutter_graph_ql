import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graph_ql/core/repositories/film/film_repository.dart';
import 'package:flutter_graph_ql/features/dashboard/bloc/state/dashboard_cubit_state.dart';

class DashboardCubit extends Cubit<DashboardCubitState> {
  DashboardCubit(
    this._filmRepository,
  ) : super(const DashboardCubitState.loading());

  final FilmRepositoryInterface _filmRepository;

  void init() async {
    final films = await _filmRepository.getAllFilms();
    emit(DashboardCubitState.data(films));
  }
}
