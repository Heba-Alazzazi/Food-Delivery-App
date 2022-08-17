// ignore_for_file: must_be_immutable, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constant.dart';

class SocialButton extends StatelessWidget {
  SocialButton(
      {Key? key,
      required this.function,
      required this.nameButtom,
      required this.color,
      required this.image,
      this.isMini = false})
      : super(key: key);
  Function function;
  String nameButtom;
  String image;
  Color color;
  bool isMini;
  var size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Padding(
      padding: isMini
          ? EdgeInsets.only(left: 0, right: 0, bottom: 0)
          : EdgeInsets.only(left: 34, right: 34, bottom: 30),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: isMini
                  ? Size(90.w, 20.h)
                  : Size(double.infinity, size.height * .07),
              primary: color,
              shape: RoundedRectangleBorder(borderRadius: borderCircle)),
          onPressed: () {
            function();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: Image.asset(image)),
              // const SizedBox(
              //   width: 30,
              // ),
              Text(
                nameButtom,
                style: const TextStyle(fontSize: 12, fontFamily: 'Reqular.otf'),
              ),
            ],
          )),
    );
  }
}
