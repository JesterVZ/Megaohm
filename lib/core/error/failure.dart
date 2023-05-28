import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure();
  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class ServerFailure extends Failure {
  Exception message;
  ServerFailure(this.message);
}
