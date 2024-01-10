import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure({required this.message});
}

class serverFailure extends Failure {
  serverFailure({required super.message});
  factory serverFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return serverFailure(message: "connection timeout with api");
      case DioExceptionType.sendTimeout:
        return serverFailure(message: "send timeout with api");
      case DioExceptionType.receiveTimeout:
        return serverFailure(message: "Recieve timeout with api");
      case DioExceptionType.badCertificate:
        return serverFailure(message: "BadCrt  with api");
      case DioExceptionType.badResponse:
        return serverFailure.fromResponse(e.response!.statusCode!, e.response!);
      case DioExceptionType.cancel:
        return serverFailure(message: "Request was canceled with api");
      case DioExceptionType.connectionError:
        return serverFailure(message: "No internet connection");
      case DioExceptionType.unknown:
        return serverFailure(
            message: "Opps there was an error,please try again");
    }
  }
  factory serverFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return serverFailure(
          message: "Your request was not found , please try again");
    } else if (statusCode == 500) {
      return serverFailure(
          message: "there is a problem with server, please try again");
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return serverFailure(message: response["error"]["message"]);
    } else {
      return serverFailure(
          message: "there was an error , please try again later");
    }
  }
}

// class cacheFailure extends Failure {}

// class networkFailure extends Failure {}
