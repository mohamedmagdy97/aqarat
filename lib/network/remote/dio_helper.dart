import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://royalazad.herokuapp.com/api/',
        receiveDataWhenStatusError: true,
        followRedirects: false,
       validateStatus: (status) {
          return status! < 500;
        },
        headers: {
          'Accept': 'application/json',
        },
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? token,

  }) async {

    dio!.options.headers = {
      // 'Accept': 'application/json',
      'Authorization': 'Bearer $token' ?? '',
    };

    return await dio!.get(
      url,
      queryParameters: query ?? null,
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? query,
     Map<String, dynamic>? data,
    String? token,
  }) async {
    dio!.options.headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token' ?? '',
    };
    return dio!.post(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
