import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:weather_app/viewModel/controller/days.controller.dart';

class DaysList extends StatelessWidget {
  DaysList({super.key});

  final controller = Get.put(DaysController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.homeController.model.value!.days!.length,
        itemBuilder: (context, index) {
          return Obx(
            () => GestureDetector(
              onTap: () => controller.setDay(index),
              child: Container(
                width: 70,
                margin: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: controller.currentDay.value == index
                      ? Colors.white
                      : Colors.white12,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        controller.getImage(
                          index,
                        ),
                      ),
                    ),
                    Text(
                      controller.getMonth(index),
                      style: TextStyle(
                          color: controller.currentDay.value == index
                              ? Colors.purple
                              : Colors.white,
                          fontSize: 30,
                          height: 0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      controller.getMonthDay(index),
                      style: TextStyle(
                          color: controller.currentDay.value == index
                              ? Colors.purple
                              : Colors.white,
                          fontSize: 20,
                          height: 0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
