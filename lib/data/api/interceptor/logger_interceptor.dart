import 'package:dio/dio.dart';

class LoggerInterceptor extends Interceptor {
  final bool isDebug;

  LoggerInterceptor({this.isDebug = false});

  @override
  Future onRequest(RequestOptions options) {
    if (isDebug) {
      print('interceptor request rui: ${options.uri} '
          '/ninterceptor request data: ${options.data}');
    }
    return super.onRequest(options);
  }
}