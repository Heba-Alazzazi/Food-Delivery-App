// ignore_for_file: file_names, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:meal_monkey/Global_Widget/button.dart';
import 'package:meal_monkey/UI/Screens/Auth/localWidget/CodeBox.dart';
import 'package:meal_monkey/UI/Screens/Auth/localWidget/customRowText.dart';
import 'package:meal_monkey/UI/Screens/Auth/localWidget/subtitle.dart';
import 'package:meal_monkey/UI/Screens/Auth/localWidget/title.dart';
import 'package:meal_monkey/UI/Screens/Auth/newPassword.dart';
import 'package:meal_monkey/constant.dart';

class CodeVerfication extends StatelessWidget {
  CodeVerfication({Key? key, required this.userInex}) : super(key: key);
  int userInex;
  var size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TitleText(text: 'We have sent an OTP to \nyour Mobile'),
          SubTitle(
              text:
                  'Please check your mobile number 071*****12 \ncontinue to reset your password'),
          SizedBox(
            height: size.height * .0625,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 34, left: 34),
            child: SizedBox(
              width: double.infinity,
              height: size.width * .15,
              child: ListView.builder(
                  //  padding: EdgeInsets.symmetric(horizontal: 10),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, i) => CodeBox()),
            ),
          ),
          SizedBox(
            height: size.height * .0425,
          ),
          Button(
              function: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NewPassword(
                              userIndex: userInex,
                            )));
              },
              nameButtom: 'Next'),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CustomRishText(
                part1: "Didn't Receive?",
                part2: ' Click Here',
                function: () {}),
          )
        ],
      ),
    );
  }
}
