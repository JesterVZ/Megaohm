import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:megaohm_app/base/enums/methods/methods.dart';
import 'package:megaohm_app/const/app.dart';

class ApiClient {
  final Dio _apiClient = _getDio(baseUrl: '');
  static Dio _getDio({String? baseUrl}) {
    return Dio(BaseOptions(
        baseUrl: baseUrl ?? '',
        connectTimeout: App.apiRequestTimeout,
        contentType: Headers.jsonContentType,
        headers: {'Authorization': 'Bearer ${App.testJWT}'}));
  }

  Future<Response> sendRequest(
      {required dynamic request,
      required String url,
      required Method method}) async {
    try {
      switch (method) {
        case Method.get:
          return await _apiClient.get(
            "${App.baseUrl}$url",
            queryParameters: jsonDecode(jsonEncode(request)),
          );
        case Method.post:
          return await _apiClient.post("${App.baseUrl}$url",
              data: FormData.fromMap(jsonDecode(jsonEncode(request))));
      }
    } on DioError catch (e) {
      return e.response!;
    }
  }
}
