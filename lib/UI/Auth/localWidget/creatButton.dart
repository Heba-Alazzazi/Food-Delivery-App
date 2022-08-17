// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, prefer_const_constructors, file_names

import 'package:flutter/material.dart';

import '../../../../constant.dart';

class CreatButton extends StatelessWidget {
  CreatButton(
      {Key? key,
      required this.function,
      required this.nameButtom,
      required this.minimumSize,
      this.backgroundColor = white,
      this.isMini = false})
      : super(key: key);
  Function function;
  String nameButtom;
  Size minimumSize;
  bool isMini = false;
  Color backgroundColor = white;
  var size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Padding(
      padding: isMini
          ? EdgeInsets.only(left: 0, right: 0, bottom: 0)
          : EdgeInsets.only(left: 34, right: 34, bottom: 40),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: minimumSize,
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
