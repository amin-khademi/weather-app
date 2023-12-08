import 'package:flutter/material.dart';
import 'package:weather_app/core/theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(AppImages.nightStatRain,width: 200,height: 200,),
      ),
    );
  }
}