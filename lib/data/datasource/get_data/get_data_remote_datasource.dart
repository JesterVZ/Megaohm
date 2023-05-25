import 'package:dio/dio.dart';
import 'package:megaohm_app/base/enums/methods/methods.dart';
import 'package:megaohm_app/base/http/http_client.dart';
import 'package:megaohm_app/const/app.dart';
import 'package:megaohm_app/core/error/exceptions.dart';
import 'package:megaohm_app/data/entities/login/get_data_request.dart';

abstract class GetDataRemoteDataSource {
  Future<bool> getData(GetDataRequest request);
}

class GetDataRemoteDataSourceImpl implements GetDataRemoteDataSource {
  GetDataRemoteDataSourceImpl({this.httpClient});
  ApiClient? httpClient;

  @override
  Future<bool> getData(GetDataRequest request) async {
    Response response = await httpClient!.sendRequest(
        request: request, url: '/tm/${App.testId}', method: Method.get);
    if (response.statusCode == 200) {
      return true;
    } else {
      throw ServerException();
    }
  }
}
