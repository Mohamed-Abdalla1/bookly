import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connection time out with server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('send time out with server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('recieve time out with server');
      case DioExceptionType.badCertificate:
        return ServerFailure('bad certificate with server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('request to api service was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('bad connection ,try again');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No internet connection');
        } else {
          return ServerFailure('UnKown error , try later');
        }
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic respone) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(respone['error']['error']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found , try later');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error , try later');
    } else {
      return ServerFailure('Oops there was an erroe, try later');
    }
  }
}
