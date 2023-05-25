import 'package:dartz/dartz.dart';
import 'package:megaohm_app/core/error/failure.dart';
import 'package:megaohm_app/core/usecase/usecase.dart';
import 'package:megaohm_app/data/entities/get_data/get_data_request.dart';
import 'package:megaohm_app/domain/repositories/get_data/get_data_repository.dart';

class GetdataUseCase extends UseCase<bool, GetDataRequest> {
  final GetDataRepository repository;
  GetdataUseCase(this.repository);
  @override
  Future<Either<Failure, bool>> call(GetDataRequest request) async =>
      await repository.getData(request);
}
