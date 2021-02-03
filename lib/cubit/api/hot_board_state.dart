part of 'hot_board_cubit.dart';

abstract class HotBoardState extends Equatable {
  const HotBoardState();
}

class HotBoardInitial extends HotBoardState {
  @override
  List<Object> get props => [];
}

class HotBoardLoading extends HotBoardState {
  @override
  List<Object> get props => [];
}

class HotBoardLoaded extends HotBoardState {
  final List<Board> boards;

  const HotBoardLoaded({@required this.boards});

  @override
  List<Object> get props => [boards];
}

class HotBoardLoadError extends HotBoardState {
  final String message;

  const HotBoardLoadError({@required this.message});

  @override
  List<Object> get props => [message];
}
