import 'package:flutter_graph_ql/core/modules/network_provider_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'features/dashboard/dashboard_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        NetworkProviderModule(),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/',
          module: DashboardModule(),
        )
      ];
}
