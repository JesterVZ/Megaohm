import 'package:dartz/dartz.dart';
import 'package:megaohm_app/core/error/failure.dart';
import 'package:megaohm_app/data/datasource/get_data/get_data_remote_datasource.dart';

import '../../domain/repositories/get_data/get_data_repository.dart';

class GetDataRepositoryImpl implements GetDataRepository {
  final GetDataRemoteDataSource? dataSource;
  GetDataRepositoryImpl({this.dataSource});

  @override
  Future<Either<Failure, bool>> getData(request) {
    // TODO: implement getData
    throw UnimplementedError();
  }
}
