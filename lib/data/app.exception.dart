class AppException implements Exception {
  final String? _prefix;
  final String? _message;

  AppException([this._prefix, this._message]);

  @override
  String toString() {
    // TODO: implement toString
    return "$_prefix$_message";
  }
}

class InternetException extends AppException {
  InternetException([String? message]) : super(message, "InternetError Issues");
}

class RequestTimeOut extends AppException {
  RequestTimeOut([String? message]) : super(message, "The request has time out");
}


class ServerError extends AppException{
  ServerError([String? message]):super(message,"An internet server error occured");

}


class InvalidUrlException extends AppException{
  InvalidUrlException([String?message]):super(message,"The Url provided is invalid");
}


class FetchDataException extends AppException{


  FetchDataException([String?message]):super(message,"failed to fetch data from the server");
}