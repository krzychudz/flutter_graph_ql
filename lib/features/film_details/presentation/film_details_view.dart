import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graph_ql/core/theme/theme_extension.dart';
import 'package:flutter_modular/flutter_modular.dart' hide Data;

import '../../../core/models/film_details/film_details.dart';
import '../../../core/widgets/general_error/general_error.dart';
import '../../../core/widgets/labeled_info/labeled_info.dart';
import '../../../core/widgets/loading_indicator/loading_indicator.dart';
import '../../character_details/presentation/character_details_screen.dart';
import '../bloc/film_details_cubit.dart';
import '../bloc/state/film_details_cubit_state.dart';
import 'widgets/character_item.dart';

class FilmDetailsView extends StatelessWidget {
  const FilmDetailsView({
    super.key,
    this.filmId,
  });

  final String? filmId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Film Details')),
      body: BlocBuilder<FilmDetailsCubit, FilmDetailsCubitState>(
        builder: (context, state) {
          return switch (state) {
            Data(:final filmDetails) =>
              FilmDetailsDataSection(filmDetails: filmDetails),
            Loading() => const LoadingIndicator(),
            Error() => const GeneralError(),
          };
        },
      ),
    );
  }
}

class FilmDetailsDataSection extends StatelessWidget {
  const FilmDetailsDataSection({
    super.key,
    required this.filmDetails,
  });

  final FilmDetails filmDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                Text(
                  filmDetails.title,
                  style: context.textTheme.headlineMedium,
                ),
                const SizedBox(height: 12),
                const Divider(height: 0.5, thickness: 0.5),
                const SizedBox(height: 12),
                LabeledInfo(
                  label: 'Director:',
                  value: filmDetails.director,
                  labelTextStyle: context.textTheme.titleMedium,
                  valueTextStyle: context.textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                LabeledInfo(
                  label: 'Created:',
                  value: filmDetails.created,
                  labelTextStyle: context.textTheme.titleMedium,
                  valueTextStyle: context.textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                LabeledInfo(
                  label: 'Edited:',
                  value: filmDetails.edited,
                  labelTextStyle: context.textTheme.titleMedium,
                  valueTextStyle: context.textTheme.titleMedium,
                ),
                const SizedBox(height: 12),
                const Divider(height: 0.5, thickness: 0.5),
                const SizedBox(height: 12),
                Text('Characters', style: context.textTheme.titleLarge),
                const SizedBox(height: 12),
              ],
            ),
          ),
          SliverList.builder(
            itemBuilder: (context, index) => CharacterItem(
              character: filmDetails.characterConnection.characters[index],
              onTap: (characterId) => Modular.to.pushNamed(
                CharacterDetailsScreen.route,
                arguments: characterId,
              ),
            ),
            itemCount: filmDetails.characterConnection.characters.length,
          ),
        ],
      ),
    );
  }
}
