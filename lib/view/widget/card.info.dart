import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                Colors.blue.withOpacity(0.4),
                Colors.blue.withOpacity(0.3),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
          ),
          Positioned(
            top: -10,
            left: 10,
            child: Obx(
              () => Image.asset(
                controller.getImage(controller.currentIndex.value),
                height: 150,
                width: 170,
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
                SizedBox(
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
          )
        ],
      ),
    );
  }
}
