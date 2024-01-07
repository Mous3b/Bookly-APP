import 'package:bookly/Features/home/domain/Repos/HomeRepo.dart';
import 'package:bookly/core/Errors/failure.dart';
import 'package:bookly/core/useCases/UseCase_NoParam.dart';
import 'package:dartz/dartz.dart';

class fetchNewestBookUC extends UseCaseNoParam {
  final HomeRepo homeRepo;

  fetchNewestBookUC(this.homeRepo);

  @override
  Future<Either<Failure, dynamic>> call() async {
    return await homeRepo.fetchNewestBook();
  }
}
