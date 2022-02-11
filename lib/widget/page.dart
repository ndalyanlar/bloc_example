import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/change_theme_cubit.dart';
import '../core/change_box_cubit.dart';
import '../utility/random_box_color.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(),
      floatingActionButton: buildActionButtons(context),
    );
  }

  void iconButtonOnpressed(BuildContext context) {
    ThemeData _themeData =
        BlocProvider.of<ChangeThemeCubit>(context, listen: false).state;
    _themeData == ThemeData.light()
        ? BlocProvider.of<ChangeThemeCubit>(context, listen: false).setDark()
        : BlocProvider.of<ChangeThemeCubit>(context, listen: false).setLight();
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(actions: [
      IconButton(
          onPressed: () {
            iconButtonOnpressed(context);
          },
          icon: const Icon(Icons.sunny))
    ], title: const Text('Square Color'));
  }

  Row buildActionButtons(BuildContext context) {
    return Row(
      children: <Widget>[
        const Spacer(
          flex: 8,
        ),
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () => context.read<CounterCubit>().decrement(),
        ),
        const Spacer(
          flex: 5,
        ),
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => context.read<CounterCubit>().increment(),
        ),
        const Spacer(
          flex: 5,
        ),
      ],
    );
  }

  BlocBuilder<CounterCubit, int> buildBody() {
    return BlocBuilder<CounterCubit, int>(
      builder: (context, count) => Center(
          child: AnimatedContainer(
        height: count * 50,
        width: count * 50,
        color: RandomColor().getColor,
        duration: const Duration(seconds: 1),
      )),
    );
  }
}
