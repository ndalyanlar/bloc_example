import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangeThemeCubit extends Cubit<ThemeData> {
  ChangeThemeCubit() : super(ThemeData.light());

  void setLight() => emit(ThemeData.light());
  void setDark() => emit(ThemeData.dark());
}
