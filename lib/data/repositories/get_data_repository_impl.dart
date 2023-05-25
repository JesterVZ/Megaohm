import 'package:dartz/dartz.dart';
import 'package:megaohm_app/core/error/failure.dart';
import 'package:megaohm_app/data/datasource/get_data/get_data_remote_datasource.dart';
import 'package:megaohm_app/data/entities/get_data/get_data_request.dart';
import 'package:megaohm_app/data/entities/get_data/get_data_response.dart';

import '../../domain/repositories/get_data/get_data_repository.dart';

class GetDataRepositoryImpl implements GetDataRepository {
  final GetDataRemoteDataSource? dataSource;
  GetDataRepositoryImpl({this.dataSource});

  @override
  Future<Either<Failure, List<GetDataResponse>>> getData(
      GetDataRequest request) async {
    try {
      final remoteData = await dataSource!.getData(request);
      return Right(remoteData);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
