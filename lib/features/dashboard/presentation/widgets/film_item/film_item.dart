import 'package:flutter/material.dart';

import '../../../../../core/models/film/film.dart';

class FilmItem extends StatelessWidget {
  const FilmItem({
    super.key,
    required this.film,
  });

  final Film film;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(film.title),
        subtitle: Text(film.director),
        trailing: Text(film.releaseDate),
      ),
    );
  }
}
