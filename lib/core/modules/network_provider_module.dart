import 'package:flutter_graph_ql/core/network/graph_ql_api_client.dart';
import 'package:flutter_graph_ql/core/network/services/film/film_service.dart';
import 'package:flutter_graph_ql/core/network/services/film/film_service_interface.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NetworkProviderModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<GraphQLApiClient>(
          (i) => GraphQLApiClient(),
          export: true,
        ),
        Bind.lazySingleton<FilmServiceInterface>(
          (i) => FilmService(i()),
          export: true,
        ),
      ];
}
