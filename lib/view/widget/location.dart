import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/core/theme.dart';
import 'package:weather_app/core/utilities.dart';
import 'package:weather_app/viewModel/controller/home.controller.dart';

class Location extends StatelessWidget {
  Location({super.key});
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              controller.getAddress(),
              style: const TextStyle(
                  height: 0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            Text(
              Utilities.formatDate(DateTime.now()),
              style: const TextStyle(
                  color: Colors.white54, fontWeight: FontWeight.bold),
            )
          ],
        ),
        const Spacer(),
        SizedBox(
          height: 150,
          width: 150,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                AppImages.map,
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    );
  }
}
