import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:bookly_app/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly_app/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeLocalDataSource _homeLocalDataSource;
  final HomeRemoteDataSource _homeRemoteDataSource;

  HomeRepoImpl(
      {required HomeLocalDataSource homeLocalDataSource,
      required HomeRemoteDataSource homeRemoteDataSource})
      : _homeLocalDataSource = homeLocalDataSource,
        _homeRemoteDataSource = homeRemoteDataSource;

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      List<BookEntity> books;
      books = _homeLocalDataSource.fetchFeaturedBooks();
      if (books.isNotEmpty) {
        return right(books);
      }

      books = await _homeRemoteDataSource.fetchFeaturedBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure(errorMessage: e.toString()));
      } else {
        return left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewsetBooks() async {
    try {
      List<BookEntity> books;
      books = _homeLocalDataSource.fetchNewsetBooks();
      if (books.isNotEmpty) {
        return right(books);
      }

      books = await _homeRemoteDataSource.fetchNewsetdBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure(errorMessage: e.toString()));
      } else {
        return left(ServerFailure(errorMessage: e.toString()));
      }
    }
  }
}
