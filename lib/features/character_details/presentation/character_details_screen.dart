import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../core/network/graph_ql_api_client.dart';
import 'character_details_view.dart';

//This screen uses GraphQLProvider in order to show
//the capabilities of GraphQL package such as useQuery hook and Query Widget.

class CharacterDetailsScreen extends StatelessWidget {
  static const route = '/character-details';

  const CharacterDetailsScreen({
    super.key,
    this.characterId,
  });

  final String? characterId;

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: ValueNotifier(Modular.get<GraphQLApiClient>().client),
      child: CharacterDetailsView(
        characterId: characterId,
      ),
    );
  }
}
