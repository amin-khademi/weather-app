import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:weather_app/core/color.dart';
import 'package:weather_app/view/pages/home-screen/home.screen.dart';
import 'package:weather_app/view/pages/next-day/compo/app.bar.dart';
import 'package:weather_app/view/pages/next-day/compo/days.list.dart';
import 'package:weather_app/view/widget/bottom.list.dart';
import 'package:weather_app/view/widget/center.card.dart';
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
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomAppBar(),
                    const SizedBox(
                      height: 20,
                    ),
                    DaysList()
                  ],
                ),
                Positioned(
                  bottom: 1,
                  child: Container(
                    height: size.height / 1.9,
                    width: size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white38,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(100),
                        topRight: Radius.circular(100),
                      ),
                    ),
                  ),
                ),
                BottomList(),
                 Hero(
                    tag: "TAG",
                    child: Material(
                      color: Colors.transparent,
                      child: CenterCard(),
                    ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
