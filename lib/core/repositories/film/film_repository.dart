import 'package:flutter_graph_ql/core/network/services/film/film_service_interface.dart';

import '../../models/film/film.dart';
import 'film_repository.dart';

class FilmRepository implements FilmRepositoryInterface {
  FilmRepository(this._filmService);

  final FilmServiceInterface _filmService;

  @override
  Future<List<Film>> getAllFilms() async {
    try {
      //ZmlsbXM6MQ==
      _filmService.getFilmDetails('1');
    } catch (e) {
      print("Error: $e");
    }
    final filmsResponse = await _filmService.getFilms();
    return filmsResponse.films;
  }
}
