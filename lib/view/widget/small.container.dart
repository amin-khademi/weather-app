import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:weather_app/core/theme.dart';
import 'package:weather_app/viewModel/controller/days.controller.dart';
import 'package:weather_app/viewModel/controller/home.controller.dart';

class SmallContainer extends StatefulWidget {
  final String text;
  final String image;
  final Color? color;
  final Color? textColor;
  const SmallContainer(
      {super.key,
      required this.text,
      required this.image,
      this.color,
      this.textColor});

  @override
  State<SmallContainer> createState() => _SmallContainerState();
}

class _SmallContainerState extends State<SmallContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: widget.color ?? Colors.grey.withOpacity(.1),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset(widget.image),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          widget.text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: widget.textColor ?? Colors.black),
        )
      ],
    );
  }
}

class SmallContainerList extends StatelessWidget {
  SmallContainerList({super.key});
  final homeController = Get.put(HomeController());
  final controller = Get.put(DaysController());
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        Obx(() => SmallContainer(
              text: "${controller.day.value.precipprob.toString()}%",
              image: AppImages.heavyRain,
              color: Colors.white38,
              textColor: Colors.white,
            )),
        const Spacer(),
        Obx(() => SmallContainer(
              text: "${controller.day.value.windspeed.toString()}km/h",
              image: AppImages.wind,
              color: Colors.white38,
              textColor: Colors.white,
            )),
        const Spacer(),
        Obx(() => SmallContainer(
              text: controller.day.value.humidity.toString(),
              image: AppImages.sun,
              color: Colors.white38,
              textColor: Colors.white,
            )),
        const Spacer(),
      ],
    );
  }
}
