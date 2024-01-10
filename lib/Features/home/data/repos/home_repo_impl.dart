import 'package:bookly/Features/home/data/LocalDataSourses/Home_Local_Data_Source.dart';
import 'package:bookly/Features/home/data/RemotDataSoures/Home_Remote_Data_Source.dart';
import 'package:bookly/Features/home/domain/Repos/HomeRepo.dart';
import 'package:bookly/Features/home/domain/entities/bookEntity.dart';
import 'package:bookly/core/Errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImple extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImple(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});
  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeatureBook() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchFeatureBook();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchFeatureBook();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(serverFailure.fromDioError(e));
      }
      return left(serverFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBook() async {
    try {
      List<BookEntity> books;
      books = homeLocalDataSource.fetchNewestBook();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewestBook();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(serverFailure.fromDioError(e));
      }
      return left(serverFailure(message: e.toString()));
    }
  }
}
