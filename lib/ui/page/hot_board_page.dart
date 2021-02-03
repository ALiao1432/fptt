import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fptt/cubit/theme/theme_cubit.dart';
import 'package:fptt/utils/app_themes.dart';

class HotBoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(onPressed: () {
              context.read<ThemeCubit>().changeTheme(AppTheme.TrueBlack);
            })
          ],
        ),
      ),
    );
  }
}
