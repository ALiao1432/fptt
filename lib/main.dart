import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fptt/cubit/api/hot_board_cubit.dart';
import 'package:fptt/cubit/cubit_observe.dart';
import 'package:fptt/cubit/theme/theme_cubit.dart';
import 'package:fptt/data/api/api.dart';
import 'package:fptt/injection/injection.dart';
import 'package:fptt/ui/page/hot_board_page.dart';
import 'package:fptt/utils/app_themes.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  configureInjection(Env.debug);
  HydratedCubit.storage = await HydratedStorage.build();
  Bloc.observer = StateObserver();
  runApp(FPttApp());
}

class FPttApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider<HotBoardCubit>(
          create: (context) => HotBoardCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeState) => MaterialApp(
          theme: appThemeData[(themeState as ThemeChange).theme],
          home: HotBoardPage(),
        ),
      ),
    );
  }
}
