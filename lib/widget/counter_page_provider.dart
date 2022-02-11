import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/counter_cubit.dart';
import 'counter_page.dart';

class CounterPageProvider extends StatelessWidget {
  const CounterPageProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const CounterPage(),
    );
  }
}
