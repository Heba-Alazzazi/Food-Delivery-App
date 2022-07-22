// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:meal_monkey/Global_Widget/button.dart';
import 'package:meal_monkey/constant.dart';

class CustomPage extends StatelessWidget {
  CustomPage({Key? key, required this.image, required this.function})
      : super(key: key);
  String image;
  Function function;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Image.asset(image),
          const SizedBox(
            height: 20,
          ),
          Button(
              function: () {
                function();
              },
              nameButtom: 'Next'),
        ],
      ),
    );
  }
}
