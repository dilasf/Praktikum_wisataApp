import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:wisata_app/detail_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen([Key? key]) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          'images/logo.png',
          width: 150,
        ),
        const Text(
          'Wisata App',
          style: TextStyle(
            fontSize: 35,
            color: Color.fromARGB(255, 140, 148, 162),
          ),
        )
      ]),
      splashIconSize: 400,
      splashTransition: SplashTransition.fadeTransition,
      duration: 1500,
      backgroundColor: Color.fromARGB(137, 4, 119, 14),
      nextScreen: const DetailScreen(),
    );
  }
}
