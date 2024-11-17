import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:bookly_app/core/utils/use_cases/use_case.dart';
import 'package:bookly_app/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class FetchNewsetBooksUseCase implements UseCase {
  final HomeRepo _homeRepo;

  FetchNewsetBooksUseCase({required HomeRepo homeRepo}) : _homeRepo = homeRepo;
  @override
  Future<Either<Failure, dynamic>> call([param]) async {
    return await _homeRepo.fetchNewsetBooks();
  }
}
