import 'package:bookly/Features/home/domain/Repos/HomeRepo.dart';
import 'package:bookly/Features/home/domain/entities/bookEntity.dart';
import 'package:bookly/core/Errors/failure.dart';
import 'package:dartz/dartz.dart';

class fetchFeatureBookUC {
  final HomeRepo homeRepo;

  fetchFeatureBookUC(this.homeRepo);
  Future<Either<Failure, List<BookEntity>>> fetchFeatureBook() {
    //permssion

    return homeRepo.fetchFeatureBook();
  }
}
