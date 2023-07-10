import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_graph_ql/features/dashboard/bloc/dashboard_cubit.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'dashboard_view.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardCubit>(
      create: (context) => Modular.get<DashboardCubit>()..init(),
      lazy: false,
      child: const DashboardView(),
    );
  }
}
