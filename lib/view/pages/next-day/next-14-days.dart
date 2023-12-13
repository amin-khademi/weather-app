import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:weather_app/core/color.dart';
import 'package:weather_app/view/pages/home-screen/home.screen.dart';
import 'package:weather_app/view/pages/next-day/compo/app.bar.dart';
import 'package:weather_app/viewModel/controller/days.controller.dart';

class NextDays extends StatelessWidget {
  NextDays({super.key});
  final homeController = Get.put(const HomeScreen());
  final dayController = Get.put(DaysController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: AppColors.buildGradientBoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: const Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    CustomAppBar(),
                    SizedBox(
                      height: 20,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
