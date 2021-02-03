import 'package:fptt/data/model/board.dart';

abstract class Api {
  Future<List<Board>> getHotBoards(); // https://www.ptt.cc/bbs/hotboards.html
}

class NetworkException implements Exception {
  final String error;

  NetworkException(this.error);
}
