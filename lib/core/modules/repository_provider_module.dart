import 'package:flutter_graph_ql/core/repositories/film/film_repository_interface.dart';
import 'package:flutter_graph_ql/core/repositories/film/film_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RepositoryProviderModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<FilmRepositoryInterface>(
          (i) => FilmRepository(i()),
          export: true,
        ),
      ];
}
