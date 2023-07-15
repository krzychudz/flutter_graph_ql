import '../../../models/all_films_response/all_films_response.dart';
import '../../../models/film_details_response/film_details_response.dart';
import '../../../models/films_response/films_response.dart';
import '../../graph_ql_api_client.dart';
import 'film_service_interface.dart';
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

  @override
  Future<FilmDetailsResponse> getFilmDetails(String filmId) async {
    final data = await _graphQLApiClient.performQuery(
      filmDetailsQuery,
      variables: {'filmId': filmId},
    );

    final filmDetailsResponse = FilmDetailsResponse.fromJson(data.data!);
    return filmDetailsResponse;
  }
}
