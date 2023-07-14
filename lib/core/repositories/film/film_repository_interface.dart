import '../../models/film/film.dart';
import '../../models/film_details/film_details.dart';

abstract interface class FilmRepositoryInterface {
  Future<List<Film>> getAllFilms();
  Future<FilmDetails> getFilmDetails(String filmId);
}
