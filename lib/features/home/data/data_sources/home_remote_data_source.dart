import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/functions/save_books_data_to_hive.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewsetdBooks();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final ApiService _apiService;

  HomeRemoteDataSourceImpl({required ApiService apiService})
      : _apiService = apiService;
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await _apiService.get(
        endPoint: 'volumes?q=programming&filter=free-ebooks');
    List<BookEntity> books = getListBooks(data);
    saveBooksDataToHive(kFeaturedBox, books);

    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewsetdBooks() async {
    var data = await _apiService.get(
        endPoint: 'volumes?q=programming&filter=free-ebooks&orderBy=newest');
    List<BookEntity> books = getListBooks(data);
    saveBooksDataToHive(kNewsetdBox, books);
    return books;
  }

  List<BookEntity> getListBooks(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }
    return books;
  }
}
