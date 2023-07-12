import 'package:flutter_graph_ql/core/models/films_response/films_response.dart';
import 'package:flutter_graph_ql/core/network/graph_ql_api_client.dart';
import 'package:flutter_graph_ql/core/network/services/film/film_service_interface.dart';

import '../../../models/all_films_response/all_films_response.dart';
import 'film_service_queries.dart';

class FilmService implements FilmServiceInterface {
  FilmService(this._graphQLApiClient);

  final GraphQLApiClient _graphQLApiClient;

  @override
  Future<FilmsResponse> getFilms() async {
    final data = await _graphQLApiClient.performQuery(allFilmsQuery);
    final allFilmsResponse = AllFilmsResponse.fromJson(data.data!);
    return allFilmsResponse.allFilms;
  }
}
