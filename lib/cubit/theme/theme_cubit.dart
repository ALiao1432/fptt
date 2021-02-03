import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fptt/utils/app_themes.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit() : super(const ThemeChange(theme: AppTheme.TrueBlack));

  void changeTheme(AppTheme appTheme) {
    emit(ThemeChange(theme: appTheme));
  }

  @override
  ThemeState fromJson(Map<String, dynamic> json) {
    var theme = AppTheme.TrueBlack;
    switch (json['theme'] as String) {
      case 'AppTheme.TrueBlack':
        theme = AppTheme.TrueBlack;
        break;
      case 'AppTheme.AllWhite':
        theme = AppTheme.AllWhite;
        break;
    }
    return ThemeChange(theme: theme);
  }

  @override
  Map<String, dynamic> toJson(ThemeState state) {
    if (state is! ThemeChange) {
      return {'theme': AppTheme.TrueBlack.toString()};
    }
    final theme = (state as ThemeChange).theme;
    return {'theme': theme.toString()};
  }
}
