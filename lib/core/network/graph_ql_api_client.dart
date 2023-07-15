// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_graph_ql/core/values/values.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:gql/language.dart';

class GraphQLApiClient {
  late GraphQLClient _client;
  GraphQLClient get client => _client;

  GraphQLApiClient() {
    final entryLink = HttpLink(Values.apiUrl);
    _client = GraphQLClient(
      link: entryLink,
      cache: GraphQLCache(
        store: InMemoryStore(),
      ),
    );
  }

  Future<T> performQuery<T>(
    String query, {
    Map<String, dynamic> variables = const {},
    T Function(Map<String, dynamic>)? parserFn,
  }) async {
    final options = QueryOptions<T>(
      document: parseString(query),
      variables: variables,
      fetchPolicy: FetchPolicy.cacheAndNetwork,
      errorPolicy: ErrorPolicy.ignore,
      parserFn: parserFn,
    );
    final result = await _client.query<T>(options);

    if (result.hasException) {
      throw Exception(result.exception.toString());
    }

    if (result.parsedData == null) {
      throw Exception('Could not parse the response');
    }

    return result.parsedData!;
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
