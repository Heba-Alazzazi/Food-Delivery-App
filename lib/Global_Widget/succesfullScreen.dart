import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/Global_Widget/button.dart';
import 'package:meal_monkey/UI/Screens/home.dart';
import 'package:meal_monkey/constant.dart';

import '../UI/Theme/TextStyle.dart';

class SuccesfullScreen extends StatelessWidget {
  const SuccesfullScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 642.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/succesfull.png'),
          Text(
            'Thank You',
            style: menuTextStyle.copyWith(fontSize: 26),
          ),
          Text(
            'for your order',
            style: menuTextStyle.copyWith(fontSize: 17),
          ),
          Text(
            'Your Order is now being processed. We will let you know once the order is picked from the outlet. Check the status of your Order',
            style: hintTextStyle.copyWith(color: primaryFontColor),
            textAlign: TextAlign.center,
          ),
          Button(function: () {}, nameButtom: 'Track My Order'),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(goTo(Home()));
              },
              child: Text('Back To Home'))
        ],
      ),
    );
  }
}
