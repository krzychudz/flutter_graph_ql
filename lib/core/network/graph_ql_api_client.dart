import 'package:flutter_graph_ql/core/values/values.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:gql/language.dart';

class GraphQLApiClient {
  late GraphQLClient _client;

  GraphQLApiClient() {
    final entryLink = HttpLink(Values.apiUrl);
    _client = GraphQLClient(
      link: entryLink,
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    );
  }

  Future<QueryResult> performQuery(
    String query, {
    Map<String, dynamic> variables = const {},
  }) async {
    final options = QueryOptions(
      document: parseString(query),
      variables: variables,
      fetchPolicy: FetchPolicy.cacheAndNetwork,
      errorPolicy: ErrorPolicy.ignore,
    );
    final result = await _client.query(options);

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    return result;
  }

  Future<QueryResult> performMutation(
    String query, {
    Map<String, dynamic> variables = const {},
  }) async {
    final options =
        MutationOptions(document: parseString(query), variables: variables);
    final result = await _client.mutate(options);

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    return result;
  }
}
