import 'package:dio/dio.dart';

class SurahHelper {
  static Dio? dio;

  static void init() {
    dio = Dio(BaseOptions(
        baseUrl: 'https://api.alquran.cloud/v1/',
        receiveDataWhenStatusError: true,
        headers: {'Content-Type': 'application/json'}));
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    dio!.options.headers = {'Content-Type': 'application/json'};
    return await dio!.get(url, queryParameters: query);
  }


}
