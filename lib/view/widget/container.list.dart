import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/core/theme.dart';
import 'package:weather_app/view/widget/small.container.dart';
import 'package:weather_app/viewModel/controller/home.controller.dart';

class ContainerList extends StatelessWidget {
  ContainerList({super.key});
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(
            () => SmallContainer(
                text: "${controller.getCloudOver()}%",
                image: AppImages.heavyRain,
                color: Colors.black54,
                textColor: Colors.white),
          ),
          Obx(
            () => SmallContainer(
                text: "${controller.getCloudOver()}km/h",
                image: AppImages.wind,
                color: Colors.black54,
                textColor: Colors.white),
          ),
          Obx(
            () => SmallContainer(
                text: "${controller.getCloudOver()}%",
                image: AppImages.sun,
                color: Colors.black54,
                textColor: Colors.white),
          )
        ],
      ),
    );
  }
}
