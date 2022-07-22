import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Model/User.dart';

const Color mainColor = Color(0xffFC6011);
const Color primaryFontColor = Color(0xff4A4B4D);
const Color seconderyFontColor = Color(0xff7C7D7E);
const Color placeholderColor = Color(0xffB6B7B7);
const Color fillColor = Color(0xffF2F2F2);
const Color white = Colors.white;
const Color black = Colors.black;
BorderRadius borderCircle = BorderRadius.circular(30);

List<User> users = [];
List<TextInputFormatter> emailFormatter = [
  // FilteringTextInputFormatter.allow(RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")),
];
List<TextInputFormatter> passwordFormatter = [
  LengthLimitingTextInputFormatter(6)
];
goTo(Widget screen){
  return MaterialPageRoute(builder: ((context) => screen));
}