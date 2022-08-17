// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:meal_monkey/constant.dart';

class Button extends StatelessWidget {
  Button({Key? key, required this.function, required this.nameButtom})
      : super(key: key);
  Function function;
  String nameButtom;
  // ignore: prefer_typing_uninitialized_variables
  var size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 34,
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, size.height * .07),
              primary: mainColor,
              shape: RoundedRectangleBorder(borderRadius: borderCircle)),
          onPressed: () {
            function();
          },
          child: Text(
            nameButtom,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            //Theme.of(context).textTheme.bodyMedium
          )),
    );
  }
}
