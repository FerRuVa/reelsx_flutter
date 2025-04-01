import 'dart:io';

import 'package:dio/dio.dart';
import 'package:reelsx/domain/exceptions/rx_exceptions.dart';


class AppError {
  static RxException processError({required dynamic error}) {
    if (error is DioException) {
      String? message = error.message;

      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          return TimeoutException(message: message ?? 'Timeout error');
        case DioExceptionType.badResponse:
          String message = '';
          int code = -1;
          final data = error.response?.data;
          if (data == null) {
            message = error.message ?? 'Unknown error';
            code = error.response?.statusCode ?? 0;
          } else {
            if (data is String) {
              message = data;
              code = error.response?.statusCode ?? 0;
            } else {
              final map = error.response!.data as Map;
              message = map['message'];
              code = map['code'];
            }
          }
          switch (code) {
            case HttpStatus.unauthorized: // 401
              return UnauthorizedException(message: message);
            case HttpStatus.badRequest: // 400
            case HttpStatus.internalServerError: // 500
            case HttpStatus.badGateway: // 502
            case HttpStatus.serviceUnavailable: // 503
            case HttpStatus.gatewayTimeout: // 504
              return ServerException(message: message);
            default:
              return UnknownException(message: message);
          }
        case DioExceptionType.cancel:
        default:
          return UnknownException(message: error.message ?? 'Unknown error');
      }
    } else if (error is SocketException) {
      return NetworkException();
    } else if (error is TimeoutException) {
      return TimeoutException(message: error.message);
    } else {
      return UnknownException(message: 'AppError: $error');
    }
  }
}
