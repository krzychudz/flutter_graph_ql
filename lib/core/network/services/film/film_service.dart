import 'package:flutter_graph_ql/core/network/graph_ql_api_client.dart';
import 'package:flutter_graph_ql/core/network/services/film/film_service_interface.dart';

import 'film_service_queries.dart';

class FilmService implements FilmServiceInterface {
  FilmService(this._graphQLApiClient);

  final GraphQLApiClient _graphQLApiClient;

  @override
  Future<void> getFilms() async {
    final data = await _graphQLApiClient.performQuery(allFilmsQuery);
    print("Data: $data");
  }
}
