// ignore_for_file: must_be_immutable, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../../constant.dart';

class SocialButton extends StatelessWidget {
  SocialButton(
      {Key? key,
      required this.function,
      required this.nameButtom,
      required this.color,
      required this.image})
      : super(key: key);
  Function function;
  String nameButtom;
  var image;
  Color color;
  var size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 34, right: 34, bottom: 30),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, size.height * .07),
              primary: color,
              shape: RoundedRectangleBorder(borderRadius: borderCircle)),
          onPressed: () {
            function();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: image),
              const SizedBox(
                width: 30,
              ),
              Text(
                nameButtom,
                style: const TextStyle(fontSize: 12, fontFamily: 'Reqular.otf'),
              ),
            ],
          )),
    );
  }
}
