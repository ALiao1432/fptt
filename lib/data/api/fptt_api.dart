import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:fptt/data/api/api.dart';
import 'package:fptt/data/api/interceptor/retry_on_connection_change_interceptor.dart';
import 'package:fptt/data/model/board.dart';
import 'package:fptt/injection/injection.dart';
import 'package:html/parser.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: Api, env: [Env.release])
class FpttApi implements Api {
  final _baseUrl = 'https://www.ptt.cc';
  final _dio = Dio();

  FpttApi() {
    _dio
      ..options.baseUrl = _baseUrl
      ..options.connectTimeout = 10 * 1000
      ..options.receiveTimeout = 10 * 1000
      ..interceptors.add(
        RetryOnConnectionChangeInterceptor(
          requestRetrier: DioConnectivityRequestRetrier(
            dio: _dio,
            connectivity: Connectivity(),
          ),
        ),
      );
  }

  @override
  Future<List<Board>> getHotBoards() async {
    try {
      final response = await _dio.request(
        '/bbs/hotboards.html',
        options: RequestOptions(method: 'GET'),
      );
      final data = parse(response.data);
      final body = data.body;
      final boardList = body.getElementsByClassName('b-ent').map((e) {
        final boardElement = e.getElementsByClassName('board')[0];
        return Board(
          href: boardElement.attributes['href'],
          name: boardElement.querySelector('div[class="board-name"]').text,
          userNum: int.parse(boardElement.querySelector('div[class="board-nuser"]').text),
          clazz: boardElement.querySelector('div[class="board-class"]').text,
          title: boardElement.querySelector('div[class="board-title"]').text,
        );
      }).toList();
      return boardList;
    } catch (e) {
      throw NetworkException(e.toString());
    }
  }
}
