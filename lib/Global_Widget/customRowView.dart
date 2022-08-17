import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:meal_monkey/constant.dart';

class CustomRowView extends StatelessWidget {
  CustomRowView({Key? key, required this.text, required this.function})
      : super(key: key);
  String text;
  Function function;
  var size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(
          top: size.height * .03,
          bottom: size.height * .029,
          left: 20,
          right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontSize: 20,
                color: primaryFontColor,
                fontWeight: FontWeight.w800),
          ),
          TextButton(
              onPressed: () {
                function();
              },
              child: const Text(
                'View all',
                style: TextStyle(
                    fontSize: 13, color: mainColor, fontFamily: 'Medium.otf'),
              )),
        ],
      ),
    );
  }
}
