import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:weather_app/viewModel/controller/days.controller.dart';
import 'package:weather_app/viewModel/controller/home.controller.dart';

class CenterCard extends StatelessWidget {
  CenterCard({super.key});
  final homeController = Get.put(HomeController());
  final controller = Get.put(DaysController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 440,
      margin: const EdgeInsets.only(top: 80),
      child: Stack(
        children: [
          Positioned(
            bottom: 50,
            left: 30,
            right: 30,
            child: Container(
              height: 330,
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.blue.withOpacity(.19),
                        Colors.blue.withOpacity(.5),
                        Colors.blue.withOpacity(.19),
                      ])),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.white,
                                      Colors.white.withOpacity(.5)
                                    ]).createShader(bounds);
                              },
                              child: Obx(
                                () => Text(
                                  "${controller.day.value.temp.toInt().toString()}\u00B0",
                                  style: const TextStyle(
                                      fontSize: 80,
                                      height: 0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
