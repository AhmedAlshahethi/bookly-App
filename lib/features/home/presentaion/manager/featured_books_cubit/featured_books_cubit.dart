import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_featured_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this._fetchFeaturedBooksUseCase)
      : super(FeaturedBooksInitial());
  final FetchFeaturedBooksUseCase _fetchFeaturedBooksUseCase;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await _fetchFeaturedBooksUseCase.call();
    result.fold((failure) {
      emit(FeaturedBooksFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(FeaturedBooksSuccess(books: books));
    });
  }
}
