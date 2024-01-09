import 'package:bookly/Features/home/domain/entities/bookEntity.dart';
import 'package:hive/hive.dart';

void saveBooks(List<BookEntity> books, boxName) {
  var box = Hive.box(boxName);
  box.addAll(books);
}
