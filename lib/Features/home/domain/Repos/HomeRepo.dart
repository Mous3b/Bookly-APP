import 'package:bookly/Features/home/domain/entities/bookEntity.dart';

abstract class HomeRepo {
  Future<List<BookEntity>> fetchFeatureBook();
  Future<List<BookEntity>> fetchNewestBook();
}
