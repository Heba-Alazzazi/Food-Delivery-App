// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:meal_monkey/constant.dart';

class SmalText extends StatelessWidget {
  SmalText({Key? key, required this.text}) : super(key: key);
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        text,
        style: TextStyle(color: seconderyFontColor, fontSize: 12),
      ),
    );
  }
}
