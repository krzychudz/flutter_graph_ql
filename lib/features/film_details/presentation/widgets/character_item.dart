import 'package:flutter/material.dart';
import 'package:flutter_graph_ql/core/theme/theme_extension.dart';
import '../../../../core/models/character/character.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({
    super.key,
    required this.character,
    this.onTap,
  });

  final Character character;
  final void Function(String characterId)? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap?.call(character.id),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Text(character.name, style: context.textTheme.labelLarge),
              const SizedBox(height: 8),
              CharacterInfoSection(character: character),
            ],
          ),
        ),
      ),
    );
  }
}

class CharacterInfoSection extends StatelessWidget {
  const CharacterInfoSection({
    super.key,
    required this.character,
  });

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Skin Color: ${character.skinColor}, '
      'Birth Year: ${character.birthYear}, '
      'Hair Color: ${character.hairColor}, '
      'Height: ${character.height}',
    );
  }
}
