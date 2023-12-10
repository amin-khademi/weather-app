import 'package:flutter/material.dart';
import 'package:weather_app/core/color.dart';
import 'package:weather_app/core/theme.dart';
import 'package:weather_app/viewModel/services/splash-screen/splash.services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SplashServices.getApiData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: AppColors.buildGradientBoxDecoration(),
        child: Center(
          child: Image.asset(
            AppImages.nightStarRain,
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
