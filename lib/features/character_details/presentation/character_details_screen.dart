import 'package:flutter/material.dart';

import 'character_details_view.dart';

class CharacterDetailsScreen extends StatelessWidget {
  static const route = '/character-details';

  const CharacterDetailsScreen({
    super.key,
    this.characterId,
  });

  final String? characterId;

  @override
  Widget build(BuildContext context) {
    return const CharacterDetailsView();
  }
}
