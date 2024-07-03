import 'package:dio/dio.dart';

class QuranHelper {
  static Dio? dio;
  static void init() {
    dio = Dio(BaseOptions(
        baseUrl: 'http://api.alquran.cloud/v1/quran/',
        receiveDataWhenStatusError: true,
        headers: {'Content-Type': 'application/json'}));
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String lang = 'en',
    String? token,
  }) async {
    dio!.options.headers = {'Content-Type': 'application/json', 'lang': lang};
    return await dio!.get(url, queryParameters: query);
  }

  static Future<Response> postData({
    required String url,
    String lang = 'en',
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio!.options.headers = {'Content-Type': 'application/json', 'lang': lang};
    return await dio!.post(url, data: data);
  }

  static Future<Response> putData({
    required String url,
    required Map<String, dynamic> data,
    String lang = 'en',
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio!.options.headers = {'Content-Type': 'application/json', 'lang': lang};
    return await dio!.put(url, data: data);
  }
}
