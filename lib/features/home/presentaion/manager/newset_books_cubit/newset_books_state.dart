part of 'newset_books_cubit.dart';

sealed class NewsetBooksState {}

final class NewsetBooksInitial extends NewsetBooksState {}

final class NewsetdBooksLoading extends NewsetBooksState {}

final class NewsetdBooksFailure extends NewsetBooksState {
  final String errorMessage;

  NewsetdBooksFailure({required this.errorMessage});
}

final class NewsetdBooksSuccess extends NewsetBooksState {
  final List<BookEntity> books;

  NewsetdBooksSuccess({required this.books});
}
