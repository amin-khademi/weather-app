import 'package:get/get.dart';
import 'package:weather_app/viewModel/controller/home.controller.dart';

class SplashServices {
  static void getApiData() {
    final controller = Get.put(HomeController());
    controller.getData();
  }
}
