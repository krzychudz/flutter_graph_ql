import '../../models/film/film.dart';
import '../../network/services/film/film_service_interface.dart';
import 'film_repository_interface.dart';

class FilmRepository implements FilmRepositoryInterface {
  FilmRepository(this._filmService);

  final FilmServiceInterface _filmService;

  @override
  Future<List<Film>> getAllFilms() async {
    try {
      //ZmlsbXM6MQ==
      final data = await _filmService.getFilmDetails('1');
      print("HERE Details: $data");
    } catch (e) {
      print("Error: $e");
    }
    final filmsResponse = await _filmService.getFilms();
    return filmsResponse.films;
  }
}
