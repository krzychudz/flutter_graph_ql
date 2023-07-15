import 'package:flutter/material.dart';
import 'package:flutter_graph_ql/core/theme/theme_extension.dart';

import '../../../../../core/models/film/film.dart';

class FilmItem extends StatelessWidget {
  const FilmItem({
    super.key,
    required this.film,
    this.onTap,
  });

  final Film film;
  final void Function(int filmId)? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap?.call(film.episodeId),
      child: Card(
        child: ListTile(
          title: Text(
            film.title,
            style: context.textTheme.labelLarge,
          ),
          subtitle: Text(film.director),
          trailing: Text(film.releaseDate),
        ),
      ),
    );
  }
}
