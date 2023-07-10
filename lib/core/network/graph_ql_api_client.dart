import 'package:flutter_graph_ql/core/values/values.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class GraphQLApiClient {
  late GraphQLClient _client;

  GraphQLApiClient() {
    print("Create pi client");
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
    final options = QueryOptions(document: gql(query), variables: variables);
    final result = await _client.query(options);

    return result;
  }

  Future<QueryResult> performMutation(
    String query, {
    Map<String, dynamic> variables = const {},
  }) async {
    final options = MutationOptions(document: gql(query), variables: variables);
    final result = await _client.mutate(options);

    return result;
  }
}