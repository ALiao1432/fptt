import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:fptt/data/api/api.dart';
import 'package:fptt/data/model/board.dart';
import 'package:fptt/injection/injection.dart';

part 'hot_board_state.dart';

class HotBoardCubit extends Cubit<HotBoardState> {
  final api = getIt<Api>();

  HotBoardCubit() : super(HotBoardInitial());
}
