import 'dart:async';

import 'package:flutter/material.dart';

import '../moduls/pages/home_layout/home_layout.dart';


class SplashScreen extends StatelessWidget {
  static const String routName = "Splashscreen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeLayout.routName);
    });
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/splash.png"),
          alignment: Alignment.bottomCenter,
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
