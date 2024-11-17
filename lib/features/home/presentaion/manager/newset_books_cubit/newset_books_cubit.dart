import 'package:bookly_app/features/home/domain/entities/book_entity.dart';
import 'package:bookly_app/features/home/domain/use_cases/fetch_newset_books_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this._fetchNewsetBooksUseCase) : super(NewsetBooksInitial());

  final FetchNewsetBooksUseCase _fetchNewsetBooksUseCase;
  Future<void> fetchFeaturedBooks() async {
    emit(NewsetdBooksLoading());
    var result = await _fetchNewsetBooksUseCase.call();
    result.fold((failure) {
      emit(NewsetdBooksFailure(errorMessage: failure.errorMessage));
    }, (books) {
      emit(NewsetdBooksSuccess(books: books));
    });
  }
}
