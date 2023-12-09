import 'package:weather_app/core/constants.dart';
import 'package:weather_app/data/network/api.services.dart';

class HomeRepo {
  static Future<dynamic> hitApi() async {
    var respone = await ApiService().getApi(AppConstants.baseUrl);
    return respone;
  }
}
