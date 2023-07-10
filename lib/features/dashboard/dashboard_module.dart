import 'package:flutter_graph_ql/features/dashboard/bloc/dashboard_cubit.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/dashboard_screen.dart';

class DashboardModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory<DashboardCubit>((i) => DashboardCubit(
              i(),
            )),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const DashboardScreen(),
        )
      ];
}
