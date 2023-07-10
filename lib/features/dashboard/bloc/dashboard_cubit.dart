import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/network/graph_ql_api_client.dart';

class DashboardCubit extends Cubit<int> {
  DashboardCubit(
    this._graphQLApiClient,
  ) : super(0) {}

  final GraphQLApiClient _graphQLApiClient;

  void init() async {
    final result = await _graphQLApiClient.performQuery(query);
  }
}

const query = '''{
  allFilms {
    films {
      id
      title
      director
      releaseDate
    }
  }
}''';
