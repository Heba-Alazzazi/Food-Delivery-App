// ignore_for_file: file_names

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:meal_monkey/UI/Screens/PageView.dart';
import 'package:meal_monkey/constant.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer(
        const Duration(seconds: 3),
        () => Navigator.push(
            context,goTo(const Introduction())));
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        'assets/images/Splash screen.png',
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
