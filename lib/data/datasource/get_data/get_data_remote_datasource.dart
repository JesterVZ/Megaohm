import 'package:dio/dio.dart';
import 'package:megaohm_app/base/enums/methods/methods.dart';
import 'package:megaohm_app/base/http/http_client.dart';
import 'package:megaohm_app/const/app.dart';
import 'package:megaohm_app/core/error/exceptions.dart';
import 'package:megaohm_app/data/entities/get_data/get_data_request.dart';
import 'package:megaohm_app/data/entities/get_data/get_data_response.dart';

abstract class GetDataRemoteDataSource {
  Future<List<GetDataResponse>> getData(GetDataRequest request);
}

class GetDataRemoteDataSourceImpl implements GetDataRemoteDataSource {
  GetDataRemoteDataSourceImpl({this.httpClient});
  ApiClient? httpClient;

  @override
  Future<List<GetDataResponse>> getData(GetDataRequest request) async {
    Response response = await httpClient!.sendRequest(
        request: request, url: '/tm/${App.testId}', method: Method.get);
    switch (response.statusCode) {
      case 200:
        List<GetDataResponse> result = [];
        if (response.data is List) {
          for (int i = 0; i < response.data.length; i++) {
            result.add(GetDataResponse.fromJson(response.data[i]));
          }
        }
        return result;
      case 400:
        throw BadRequestException();
      case 403:
        throw ForbiddenException();
      case 429:
        throw TooManyRequestException();
      case 500:
        throw UnexpectedException();
    }
    throw UnexpectedException();
  }
}
