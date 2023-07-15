import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graph_ql/features/film_details/bloc/film_details_cubit.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'film_details_view.dart';

class FilmDetailsScreen extends StatelessWidget {
  static const String route = '/film_details';

  const FilmDetailsScreen({
    super.key,
    this.filmId,
  });

  final int? filmId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FilmDetailsCubit>(
      lazy: false,
      create: (context) =>
          Modular.get<FilmDetailsCubit>()..init(filmId?.toString()),
      child: FilmDetailsView(
        filmId: filmId?.toString(),
      ),
    );
  }
}
