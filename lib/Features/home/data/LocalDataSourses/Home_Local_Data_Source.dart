import 'package:bookly/Features/home/domain/entities/bookEntity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeatureBook();
  List<BookEntity> fetchNewestBook();
}

class implHomeLocalDataSource extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeatureBook() {
    // TODO: implement fetchFeatureBook
    throw UnimplementedError();
  }

  @override
  List<BookEntity> fetchNewestBook() {
    // TODO: implement fetchNewestBook
    throw UnimplementedError();
  }
}
