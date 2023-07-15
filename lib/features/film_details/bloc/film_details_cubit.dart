import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graph_ql/core/repositories/film/film_repository_interface.dart';
import 'package:flutter_graph_ql/features/film_details/bloc/state/film_details_cubit_state.dart';

class FilmDetailsCubit extends Cubit<FilmDetailsCubitState> {
  FilmDetailsCubit(this._filmRepository)
      : super(const FilmDetailsCubitState.loading());

  final FilmRepositoryInterface _filmRepository;

  void init(String? filmId) async {
    if (filmId == null) return;
    final filmDetails = await _filmRepository.getFilmDetails(filmId);
    emit(FilmDetailsCubitState.data(filmDetails));
  }
}
