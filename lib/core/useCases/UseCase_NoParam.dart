import 'package:bookly/core/Errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCaseNoParam<T> {
  Future<Either<Failure, T>> call();
}
