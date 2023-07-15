import 'package:flutter_graph_ql/features/dashboard/bloc/dashboard_cubit.dart';
import 'package:flutter_graph_ql/features/film_details/presentation/film_details_screen.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../character_details/presentation/character_details_screen.dart';
import '../film_details/bloc/film_details_cubit.dart';
import 'presentation/dashboard_screen.dart';

class DashboardModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory<DashboardCubit>(
          (i) => DashboardCubit(i()),
        ),
        Bind.factory<FilmDetailsCubit>(
          (i) => FilmDetailsCubit(i()),
        )
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const DashboardScreen(),
        ),
        ChildRoute(
          FilmDetailsScreen.route,
          child: (context, args) => FilmDetailsScreen(
            filmId: args.data as int,
          ),
        ),
        ChildRoute(
          CharacterDetailsScreen.route,
          child: (context, args) => CharacterDetailsScreen(
            characterId: args.data as String,
          ),
        )
      ];
}
