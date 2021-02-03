part of 'theme_cubit.dart';

abstract class ThemeState extends Equatable {
  const ThemeState();
}

class ThemeChange extends ThemeState {
  final AppTheme theme;

  const ThemeChange({@required this.theme});

  @override
  List<Object> get props => [theme];
}
