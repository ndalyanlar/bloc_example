import 'widget/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/change_theme_cubit.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => ChangeThemeCubit(),
      child: const Home(),
    ),
  );
}
