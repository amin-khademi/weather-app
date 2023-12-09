import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/core/theme.dart';
import 'package:weather_app/core/utilities.dart';
import 'package:weather_app/model/data.model.dart';

class HomeController extends GetxController {
  Rx<DataModel?> model = Rx<DataModel?>(null);
  Rx<Hours?> hours = Rx<Hours?>(null);
  Rx<int> currentIndex = 0.obs;
  RxBool animator = false.obs;

  int getCurrentIndex() => currentIndex.value;
  bool compareIndex(int index) => index == currentIndex.value;
  String getHour(int index) => Utilities.formateTimeWithoutAmPm(
      model.value!.days![0].hours![index].datetime.toString());
  String getImage(int index) => Utilities().imageMap[
              model.value!.days![0]!.hours![index].conditions.toString()] ==
          null
      ? AppImages.nightStarRain
      : Utilities().imageMap[
          model.value!.days![0]!.hours![index].conditions.toString()]!;

  String getAddress() =>
      "${model.value!.address.toString()},\n ${model.value!.timezone.toString()}";

  String getConditiotn() => hours.value!.conditions.toString();
  String getCurrentTemp() => hours.value!.temp!.toInt().toString();
  String getFeelLike() => hours.value!.feelslike.toString();
  String getCloudOver() => hours.value!.cloudcover!.toInt().toString();
  String getWindSpeed() => hours.value!.windspeed!.toInt().toString();
  String getHumidity() => hours.value!.humidity!.toInt().toString();

}
