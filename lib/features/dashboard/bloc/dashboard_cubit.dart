import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graph_ql/core/repositories/film/film_repository.dart';

class DashboardCubit extends Cubit<int> {
  DashboardCubit(
    this._filmRepository,
  ) : super(0) {}

  final FilmRepositoryInterface _filmRepository;

  void init() async {
    final films = await _filmRepository.getAllFilms();
  }
}
