import 'package:flutter_graph_ql/core/models/films_response/films_response.dart';

abstract interface class FilmServiceInterface {
  Future<FilmsResponse> getFilms();
  void getFilmDetails(String filmId);
}
