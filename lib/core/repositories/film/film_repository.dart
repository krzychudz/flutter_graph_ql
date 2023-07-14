import 'package:flutter_graph_ql/core/models/film_details/film_details.dart';

import '../../models/film/film.dart';
import '../../network/services/film/film_service_interface.dart';
import 'film_repository_interface.dart';

class FilmRepository implements FilmRepositoryInterface {
  FilmRepository(this._filmService);

  final FilmServiceInterface _filmService;

  @override
  Future<List<Film>> getAllFilms() async {
    final filmsResponse = await _filmService.getFilms();
    return filmsResponse.films;
  }

  @override
  Future<FilmDetails> getFilmDetails(String filmId) async {
    final filmDetailsResponse = await _filmService.getFilmDetails(filmId);
    return filmDetailsResponse.film;
  }
}
