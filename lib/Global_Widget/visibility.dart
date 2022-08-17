// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
class Visibility_ extends StatelessWidget {
  Visibility_({Key? key,required this.invalid}) : super(key: key);
  bool invalid;
  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: invalid,
        child: const Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            'Not valid',
            style: TextStyle(
                color: Colors.red, fontSize: 17, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
