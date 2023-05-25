import 'package:dartz/dartz.dart';
import 'package:megaohm_app/core/error/failure.dart';
import 'package:megaohm_app/data/entities/get_data/get_data_request.dart';

abstract class GetDataRepository {
  Future<Either<Failure, bool>> getData(GetDataRequest request);
}
