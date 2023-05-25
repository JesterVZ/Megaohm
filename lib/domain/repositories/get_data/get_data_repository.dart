import 'package:dartz/dartz.dart';
import 'package:megaohm_app/core/error/failure.dart';
import 'package:megaohm_app/data/entities/get_data/get_data_request.dart';
import 'package:megaohm_app/data/entities/get_data/get_data_response.dart';

abstract class GetDataRepository {
  Future<Either<Failure, List<GetDataResponse>>> getData(
      GetDataRequest request);
}
