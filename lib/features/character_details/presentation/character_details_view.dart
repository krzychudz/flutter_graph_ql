import 'package:flutter/material.dart';
import 'package:flutter_graph_ql/core/models/character_response/character_response.dart';
import 'package:flutter_graph_ql/core/network/services/film/film_service_queries.dart';
import 'package:flutter_graph_ql/core/widgets/general_error/general_error.dart';
import 'package:flutter_graph_ql/core/widgets/loading_indicator/loading_indicator.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'widgets/character_details_section/character_details_section.dart';

class CharacterDetailsView extends StatelessWidget {
  const CharacterDetailsView({
    super.key,
    this.characterId,
  });

  final String? characterId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Character Details'),
      ),
      body: CharacterDetailsBody(characterId: characterId),
    );
  }
}

class CharacterDetailsBody extends StatelessWidget {
  const CharacterDetailsBody({super.key, this.characterId});

  final String? characterId;

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        document: characterDetailsQuery,
        variables: {'personId': characterId},
        parserFn: CharacterResponse.fromJson,
      ),
      builder: (QueryResult<CharacterResponse> result,
          {VoidCallback? refetch, FetchMore? fetchMore}) {
        if (result.hasException) const GeneralError();
        if (result.isLoading) const LoadingIndicator();

        return CharacterDetailsSection(
          character: result.parsedData?.person,
        );
      },
    );
  }
}
