import '../../models/film/film.dart';

abstract interface class FilmRepositoryInterface {
  Future<List<Film>> getAllFilms();
}
