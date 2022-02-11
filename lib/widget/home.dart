import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/change_theme_cubit.dart';
import 'page_provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChangeThemeCubit, ThemeData>(
      builder: (context, themeData) {
        return MaterialApp(
          title: 'Bloc Demo',
          theme: themeData,
          home: const ChangeBoxPageProvider(),
        );
      },
    );
  }
}
