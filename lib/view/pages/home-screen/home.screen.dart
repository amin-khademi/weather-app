import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/core/color.dart';
import 'package:weather_app/view/pages/next-day/next-14-days.dart';
import 'package:weather_app/view/widget/app.bar.dart';
import 'package:weather_app/view/widget/card.info.dart';
import 'package:weather_app/view/widget/container.list.dart';
import 'package:weather_app/view/widget/location.dart';
import 'package:weather_app/viewModel/controller/home.controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppColors.buildGradientBoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const CustomAppBar(),
                Location(),
                Hero(
                  tag: "TAG",
                  child: Material(
                    color: Colors.transparent,
                    child: CardInfo(),
                  ),
                ),
                ContainerList(),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(const NextDays());
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        Spacer(),
                        Text(
                          "Next 14 Days",
                          style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
