class RxException implements Exception {
  final String message;

  RxException (this.message);

  @override
  String toString() => 'RxException : $message';
}

class NetworkException extends RxException  {
  NetworkException({String message = 'Network error'}) : super(message);
}

class TimeoutException extends RxException  {
  TimeoutException({String message = 'Timeout error'}) : super(message);
}

class UnauthorizedException extends RxException  {
  UnauthorizedException({String message = 'Unauthorized'}) : super(message);
}

class ServerException extends RxException  {
  ServerException({String message = 'Server error'}) : super(message);
}

class UnknownException extends RxException  {
  UnknownException({String message = 'Unknown error'}) : super(message);
}
