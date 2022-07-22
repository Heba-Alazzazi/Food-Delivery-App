// ignore_for_file: file_names, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:meal_monkey/constant.dart';

class CodeBox extends StatelessWidget {
  CodeBox({Key? key}) : super(key: key);
  var size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(
        right: 20,
      ),
      width: size.width * .16,
      height: size.width * .16,
      child: TextField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
          fillColor: fillColor,
          filled: true,
          hintText: '*',
          hintStyle: const TextStyle(
            fontSize: 37,
            fontFamily: 'Reqular.otf',
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15)),
          // label: Padding(
          //   padding: const EdgeInsets.only(left: 13, top: 4),
          //   child: Image.asset(
          //     'assets/icons/star.png',
          //     alignment: Alignment.center,
          //   ),
          // ),
        ),
      ),
    );
  }
}
