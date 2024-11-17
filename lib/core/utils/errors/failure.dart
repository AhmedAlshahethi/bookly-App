import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errorMessage: 'Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: 'Bad certificate with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            statusCode: e.response!.statusCode!, response: e.response!.data!);
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Request to Api Server was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: 'No Internt Connection');
      case DioExceptionType.unknown:
        return ServerFailure(
            errorMessage: 'Opps there was an error, please try again!');
    }
  }

  factory ServerFailure.fromResponse(
      {required int statusCode, required dynamic response}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessage: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errorMessage: 'Your Rrequest not found, please try later!');
    } else if (statusCode == 500) {
      return ServerFailure(
          errorMessage: 'Internal Server error, please try later!');
    } else {
      return ServerFailure(
          errorMessage: 'Opps there was an error, please try again!');
    }
  }
}
