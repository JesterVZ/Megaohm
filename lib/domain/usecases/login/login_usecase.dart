import 'package:dartz/dartz.dart';
import 'package:megaohm_app/core/error/failure.dart';
import 'package:megaohm_app/core/usecase/usecase.dart';
import 'package:megaohm_app/data/entities/login/login_request.dart';
import 'package:megaohm_app/domain/repositories/login/login_repository.dart';

class LoginUsecase implements UseCase<bool, LoginRequest> {
  final LoginRepository repository;
  LoginUsecase(this.repository);
  @override
  Future<Either<Failure, bool>> call(LoginRequest request) async {
    return await repository.login(request);
  }
}
