import 'package:bookly/Features/home/domain/entities/bookEntity.dart';
import 'package:bookly/constants.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeatureBook();
  List<BookEntity> fetchNewestBook();
}

class implHomeLocalDataSource extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeatureBook() {
    var box = Hive.box<BookEntity>(KfeaturedBox);
    return box.values.toList();
  }

  @override
  List<BookEntity> fetchNewestBook() {
    var box = Hive.box<BookEntity>(KNewestBox);
    return box.values.toList();
  }
}
