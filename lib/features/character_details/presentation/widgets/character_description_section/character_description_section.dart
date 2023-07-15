import 'package:flutter/material.dart';
import 'package:flutter_graph_ql/core/theme/theme_extension.dart';

import '../../../../../core/models/character/character.dart';
import '../../../../../core/widgets/labeled_info/labeled_info.dart';

class CharacterDescriptionSection extends StatelessWidget {
  const CharacterDescriptionSection({super.key, required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            LabeledInfo(
              label: "Skin Color:",
              value: character.skinColor,
              labelTextStyle: context.textTheme.labelLarge,
            ),
            const SizedBox(height: 8),
            LabeledInfo(
              label: "Birth Year:",
              value: character.birthYear,
              labelTextStyle: context.textTheme.labelLarge,
            ),
            const SizedBox(height: 8),
            LabeledInfo(
              label: "Hair Color:",
              value: character.hairColor,
              labelTextStyle: context.textTheme.labelLarge,
            ),
            const SizedBox(height: 8),
            LabeledInfo(
              label: "Eye Color:",
              value: character.eyeColor ?? '-',
              labelTextStyle: context.textTheme.labelLarge,
            ),
            const SizedBox(height: 8),
            LabeledInfo(
              label: "Gender:",
              value: character.gender ?? '-',
              labelTextStyle: context.textTheme.labelLarge,
            ),
            const SizedBox(height: 8),
            LabeledInfo(
              label: "Mass:",
              value: character.mass?.toString() ?? '-',
              labelTextStyle: context.textTheme.labelLarge,
            ),
            const SizedBox(height: 8),
            LabeledInfo(
              label: "Height:",
              value: character.height?.toString() ?? '-',
              labelTextStyle: context.textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
