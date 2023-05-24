import 'package:dartz/dartz.dart';
import 'package:megaohm_app/core/error/failure.dart';

///T - тип, R - request
abstract class UseCase<T, R> {
  Future<Either<Failure, T>> call(R request);
}
