import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/change_box_cubit.dart';
import 'page.dart';

class ChangeBoxPageProvider extends StatelessWidget {
  const ChangeBoxPageProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MyPage(),
    );
  }
}
