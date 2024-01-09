import 'package:bookly/Features/home/domain/entities/bookEntity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeatureBook();
  Future<List<BookEntity>> fetchNewestBook();
}

class HomeRemoteDataSourceIMPL extends HomeRemoteDataSource {
  @override
  Future<List<BookEntity>> fetchFeatureBook() {
    // TODO: implement fetchFeatureBook
    throw UnimplementedError();
  }

  @override
  Future<List<BookEntity>> fetchNewestBook() {
    // TODO: implement fetchNewestBook
    throw UnimplementedError();
  }
}
