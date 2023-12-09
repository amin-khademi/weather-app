import 'dart:convert';
import 'dart:io';

import 'package:weather_app/data/app.exception.dart';
import 'package:weather_app/data/network/base.api.service.dart';
import 'package:http/http.dart' as http;

class ApiService extends BaseApiServices {
  dynamic jsonRespons(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var jsonRespponse = jsonDecode(response.body);
        return jsonRespponse;
      case 400:
        var jsonRespone = jsonDecode(response.body);
        return jsonRespone;

      default:
        throw FetchDataException(
            "Error while comminucation ${response.statusCode}");
    }
  }

  @override
  Future getApi(String url) async {
    var jsonData;
    try {
      var response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      jsonData = jsonRespons(response);
    } on RequestTimeOut {
      throw RequestTimeOut("Request Timeout");
    } on SocketException {
      throw InternetException("No Internet ");
    }
    return jsonData;
  }
}
