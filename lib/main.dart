import 'package:flutter/material.dart';
import 'package:flutter_graph_ql/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  runApp(ModularApp(
    module: AppModule(),
    child: const Application(),
  ));
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Graph QL playground',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
