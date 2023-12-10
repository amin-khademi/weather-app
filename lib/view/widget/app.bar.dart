import 'package:flutter/material.dart';
import 'package:weather_app/core/theme.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.all(8),
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Padding(
          padding: EdgeInsets.all(8),
          child: Icon(
            Icons.notifications_none_rounded,
            color: Colors.white,
          ),
        ),
        const Spacer(),
        Padding(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              AppImages.nightRain,
              height: 30,
              width: 30,
            ))
      ],
    );
  }
}
