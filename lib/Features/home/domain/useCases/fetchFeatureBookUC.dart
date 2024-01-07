import 'package:bookly/Features/home/domain/Repos/HomeRepo.dart';
import 'package:bookly/core/Errors/failure.dart';
import 'package:bookly/core/useCases/UseCase_NoParam.dart';
import 'package:dartz/dartz.dart';

class fetchFeatureBookUC extends UseCaseNoParam {
  final HomeRepo homeRepo;

  fetchFeatureBookUC(this.homeRepo);

  @override
  Future<Either<Failure, dynamic>> call() {
    throw UnimplementedError();
  }
}
