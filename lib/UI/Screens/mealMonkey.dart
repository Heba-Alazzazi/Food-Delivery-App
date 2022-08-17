// ignore_for_file: prefer_typing_uninitialized_variables, file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/Global_Widget/button.dart';
import 'package:meal_monkey/constant.dart';
import '../Auth/localWidget/creatButton.dart';
import '../Auth/login.dart';
import '../Auth/sigup.dart';


class MealMonkey extends StatefulWidget {
  const MealMonkey({Key? key}) : super(key: key);

  @override
  State<MealMonkey> createState() => _MealMonkeyState();
}

class _MealMonkeyState extends State<MealMonkey> {
  var size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/main.png',
            fit: BoxFit.fill,
            width: double.infinity,
            height: size.height * .75,
          ),
          Button(
              function: () {
                Navigator.push(context, goTo(Login()));
              },
              nameButtom: 'Login'),
          CreatButton(
              function: () {
                Navigator.push(context, goTo(SignUp()));
              },
              nameButtom: 'Creat an Account',minimumSize: Size(double.infinity, 56.h),)
        ],
      ),
    );
  }
}
