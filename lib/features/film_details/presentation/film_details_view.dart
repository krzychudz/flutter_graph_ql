import 'package:flutter/material.dart';

class FilmDetailsView extends StatelessWidget {
  const FilmDetailsView({
    super.key,
    this.filmId,
  });

  final String? filmId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Film Details'),
      ),
      body: Center(
        child: Text('Details: $filmId'),
      ),
    );
  }
}
