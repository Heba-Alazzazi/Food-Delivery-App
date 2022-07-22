// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

import '../../../../constant.dart';

class CreatButton extends StatelessWidget {
  CreatButton({Key? key, required this.function, required this.nameButtom})
      : super(key: key);
  Function function;
  String nameButtom;
  var size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 34, right: 34, bottom: 40),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, size.height * .07),
              onPrimary: mainColor,
              primary: white,
              shape: RoundedRectangleBorder(
                  borderRadius: borderCircle,
                  side: const BorderSide(color: mainColor, width: 2))),
          onPressed: () {
            function();
          },
          child: Text(
            nameButtom,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: mainColor),
          )),
    );
  }
}
