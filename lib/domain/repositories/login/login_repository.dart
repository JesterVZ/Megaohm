import 'package:dartz/dartz.dart';
import 'package:megaohm_app/core/error/failure.dart';
import 'package:megaohm_app/data/entities/login/login_request.dart';

abstract class LoginRepository {
  Future<Either<Failure, bool>> login(LoginRequest request);
}
