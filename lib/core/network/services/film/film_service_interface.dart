import '../../../models/film_details_response/film_details_response.dart';
import '../../../models/films_response/films_response.dart';

abstract interface class FilmServiceInterface {
  Future<FilmsResponse> getFilms();
  Future<FilmDetailsResponse> getFilmDetails(String filmId);
}
