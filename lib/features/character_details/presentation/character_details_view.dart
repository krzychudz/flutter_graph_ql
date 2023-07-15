import 'package:flutter/material.dart';
import 'package:flutter_graph_ql/core/models/character_response/character_response.dart';
import 'package:flutter_graph_ql/core/network/services/film/film_service_queries.dart';
import 'package:flutter_graph_ql/core/widgets/general_error/general_error.dart';
import 'package:flutter_graph_ql/core/widgets/loading_indicator/loading_indicator.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../core/models/character/character.dart';

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
        title: Text('Character Details'),
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
          if (result.isLoading || result.parsedData == null) {
            const LoadingIndicator();
          }

          print("HERE DATA: ${result.parsedData}");

          return CharacterDetailsSection(
            character: result.parsedData!.person,
          );
        });
  }
}

class CharacterDetailsSection extends StatelessWidget {
  const CharacterDetailsSection({
    super.key,
    required this.character,
  });

  final Character character;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
