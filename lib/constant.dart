import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meal_monkey/UI/Screens/NavigationScreen/moreScreen/aboutUs.dart';
import 'package:meal_monkey/UI/Screens/NavigationScreen/moreScreen/checkOutScreen.dart';
import 'package:meal_monkey/UI/Screens/NavigationScreen/moreScreen/inbox.dart';
import 'package:meal_monkey/UI/Screens/NavigationScreen/moreScreen/myOrders.dart';
import 'package:meal_monkey/UI/Screens/NavigationScreen/moreScreen/notification.dart';
import 'package:meal_monkey/UI/Screens/NavigationScreen/moreScreen/payment.dart';
import 'package:meal_monkey/UI/Screens/NavigationScreen/HomeBody.dart';
import 'package:meal_monkey/UI/Screens/NavigationScreen/moreScreen/MoreBody.dart';
import 'package:meal_monkey/UI/Screens/NavigationScreen/menuBody.dart';
import 'package:meal_monkey/UI/Screens/NavigationScreen/offersBody.dart';
import 'package:meal_monkey/UI/Screens/NavigationScreen/profileBody.dart';
import 'Model/User.dart';
import 'UI/Screens/NavigationScreen/moreScreen/moreScreens.dart';

const Color mainColor = Color(0xffFC6011);
const Color primaryFontColor = Color(0xff4A4B4D);
const Color seconderyFontColor = Color(0xff7C7D7E);
const Color placeholderColor = Color(0xffB6B7B7);
const Color fillColor = Color(0xffF2F2F2);
const Color white = Colors.white;
//const Color black = Colors.black;
BorderRadius borderCircle = BorderRadius.circular(30);
OutlineInputBorder outlineInputBorder =
    OutlineInputBorder(borderRadius: borderCircle, borderSide: BorderSide.none);
var redPoint = Text(
  '.',
  style: TextStyle(color: Colors.red),
);
List<User> users = [];
List<TextInputFormatter> emailFormatter = [
  // FilteringTextInputFormatter.allow(RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")),
];
List<TextInputFormatter> passwordFormatter = [
  LengthLimitingTextInputFormatter(6)
];
goTo(Widget screen) {
  return MaterialPageRoute(builder: ((context) => screen));
}

List<Widget> listOfNavigationItem = [
  MenuBody(),
  OfferBody(),
  HomeBody(),
  ProfileBody(),
  MoreScreen()
];
 List moreScreens =const [MoreBody(), PaymentDetails(),MyOrders(),Notifications(),Inbox(),AboutUs(),CheckOutScreen()];
enum Payment {cash,visa,gmail}