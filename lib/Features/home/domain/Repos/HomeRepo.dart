import 'package:bookly/Features/home/domain/entities/bookEntity.dart';
import 'package:bookly/core/Errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeatureBook();
  Future<Either<Failure, List<BookEntity>>> fetchNewestBook();
}
