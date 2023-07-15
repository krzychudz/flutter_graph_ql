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
    final dataResponse = await _graphQLApiClient.performQuery<AllFilmsResponse>(
      allFilmsQuery,
      parserFn: AllFilmsResponse.fromJson,
    );

    return dataResponse.allFilms;
  }

  @override
  Future<FilmDetailsResponse> getFilmDetails(String filmId) async {
    final dataResponse =
        await _graphQLApiClient.performQuery<FilmDetailsResponse>(
      filmDetailsQuery,
      variables: {'filmId': filmId},
      parserFn: FilmDetailsResponse.fromJson,
    );

    return dataResponse;
  }
}
