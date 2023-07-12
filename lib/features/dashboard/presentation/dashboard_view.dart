import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/models/film/film.dart';
import '../../../core/widgets/general_error/general_error.dart';
import '../../../core/widgets/loading_indicator/loading_indicator.dart';
import '../bloc/dashboard_cubit.dart';
import '../bloc/state/dashboard_cubit_state.dart';
import 'widgets/film_item/film_item.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: BlocBuilder<DashboardCubit, DashboardCubitState>(
          builder: (context, state) {
        return switch (state) {
          Data(:final films) => FilmsList(films: films),
          Loading() => const LoadingIndicator(),
          Error() => const GeneralError(),
        };
      }),
    );
  }
}

class FilmsList extends StatelessWidget {
  const FilmsList({
    super.key,
    required this.films,
  });

  final List<Film> films;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: films.length,
      itemBuilder: (BuildContext context, int index) {
        final film = films[index];
        return FilmItem(film: film);
      },
    );
  }
}
