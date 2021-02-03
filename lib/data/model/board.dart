import 'package:freezed_annotation/freezed_annotation.dart';

part 'board.freezed.dart';

@freezed
abstract class Board with _$Board {
  factory Board({
    String href,
    String name,
    int userNum,
    String clazz,
    String title,
  }) = _Board;
}
