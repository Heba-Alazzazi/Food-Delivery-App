// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:meal_monkey/constant.dart';

class SubTitle extends StatelessWidget {
  SubTitle({Key? key, required this.text}) : super(key: key);
  String text;
  var size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: size.height * .03),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 14,
          fontFamily: 'Medium.otf',
          color: seconderyFontColor,
        ),
      ),
    );
  }
}
