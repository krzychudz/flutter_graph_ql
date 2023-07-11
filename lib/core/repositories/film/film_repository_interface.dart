import 'package:flutter_graph_ql/core/network/services/film/film_service_interface.dart';

import 'film_repository.dart';

class FilmRepository implements FilmRepositoryInterface {
  FilmRepository(this._filmService);

  final FilmServiceInterface _filmService;

  @override
  Future<void> getAllFilms() async {
    // Implement the logic to retrieve and store film data here
  }
}
