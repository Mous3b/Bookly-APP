import 'package:bookly/Features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/Features/home/domain/entities/bookEntity.dart';
import 'package:bookly/core/utils/Api_Service.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeatureBook();
  Future<List<BookEntity>> fetchNewestBook();
}

class HomeRemoteDataSourceIMPL extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceIMPL(this.apiService);
  @override
  Future<List<BookEntity>> fetchFeatureBook() async {
    var data = await apiService.get(
        endpoint: "volumes?Filtering=free-ebooks&q=programming");
    return getBookList(data);
  }

  @override
  Future<List<BookEntity>> fetchNewestBook() async {
    var data = await apiService.get(
        endpoint: "volumes?Filtering=free-ebooks&Sorting=newest&q=programming");
    return getBookList(data);
  }

  List<BookEntity> getBookList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bk in data["items"]) {
      books.add(BookModel.fromJson(bk));
    }
    return books;
  }
}
