import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/core/theme.dart';
import 'package:weather_app/core/utilities.dart';
import 'package:weather_app/viewModel/controller/home.controller.dart';

class CardInfo extends StatelessWidget {
  CardInfo({super.key});
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      height: 233,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 180,
            width: size.width,
            margin: const EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [
                Colors.blue.withOpacity(0.3),
                Colors.blue.withOpacity(0.6),
                Colors.blue.withOpacity(0.3),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
          ),
          Positioned(
            top: 30,
            left: 10,
            child: Obx(
              () => Image.asset(
                controller.getImage(controller.currentIndex.value),
                height: 100,
                width: 120,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    controller.getConditiotn(),
                    style: const TextStyle(
                        height: 0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 23),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  Utilities.currentTime(),
                  style: TextStyle(
                      height: 0,
                      color: Colors.white.withOpacity(0.8),
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                )
              ],
            ),
          ),
          Positioned(
            top: 30,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ShaderMask(
                  shaderCallback: (bounds) {
                    return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white,
                          Colors.white.withOpacity(0.8)
                        ]).createShader(bounds);
                  },
                  child: Obx(
                    () => Text(
                      controller.getCurrentTemp(),
                      style: const TextStyle(
                          fontSize: 60,
                          height: 0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                Obx(
                  () => Text(
                    "Feel like ${controller.getFeelLike()}",
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 0,
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white,
                          Colors.white.withOpacity(0.8),
                        ],
                      ).createShader(bounds);
                    },
                    child: Image.asset(
                      AppImages.windwave,
                      height: 100,
                      width: 200,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
