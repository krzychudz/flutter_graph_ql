import 'package:flutter/material.dart';
import 'package:flutter_graph_ql/core/theme/theme_extension.dart';

import '../../../../../core/models/character/character.dart';
import '../character_description_section/character_description_section.dart';

class CharacterDetailsSection extends StatelessWidget {
  const CharacterDetailsSection({
    super.key,
    this.character,
  });

  final Character? character;

  @override
  Widget build(BuildContext context) {
    return character == null
        ? const SizedBox.shrink()
        : SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    character!.name,
                    style: context.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 12),
                  CharacterDescriptionSection(character: character!),
                ],
              ),
            ),
          );
  }
}
