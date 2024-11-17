import 'package:bookly_app/core/utils/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCaseNoParam<Type> {
  Future<Either<Failure, Type>> call();
}
