import 'package:get/get.dart';
import 'package:weather_app/core/theme.dart';
import 'package:weather_app/core/utilities.dart';
import 'package:weather_app/model/data.model.dart';
import 'package:weather_app/viewModel/controller/home.controller.dart';

class DaysController extends GetxController {
  RxInt currentDay = 0.obs;
  final homeController = Get.put(HomeController());
  late Rx<Days> day;
  DaysController() {
    day = homeController.model.value!.days![0].obs;
  }
  setDay(int index) {
    day.value = homeController.model.value!.days![index];
    currentDay.value = index;
  }

  String getImage(int index) {
    Utilities utilities = Utilities();
    return utilities.imageMap[
                homeController.model.value!.days![index].conditions] ==
            null
        ? AppImages.nightStarRain
        : Utilities()
            .imageMap[homeController.model.value!.days![index].conditions]!;
  }
}
