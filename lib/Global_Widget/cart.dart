import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/UI/Auth/localWidget/socialButton.dart';
import 'package:meal_monkey/UI/Theme/TextStyle.dart';
import 'package:meal_monkey/constant.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 171.h,
          width: 97.w,
          decoration: BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50.r),
                  bottomRight: Radius.circular(50.r))),
        ),
        Container(
          height: 122.h,
          margin: EdgeInsets.only(left: 34.w, right: 44.w, top: 25.h),
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: placeholderColor, blurRadius: 3, spreadRadius: 1)
              ],
              color: white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.r),
                  bottomLeft: Radius.circular(50.r))),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Total Price',
                  style: smalTextStyle.copyWith(
                      color: primaryFontColor, fontSize: 12),
                ),
                Text(
                  'LKR 1500',
                  style: menuTextStyle,
                ),
                SocialButton(
                  function: () {},
                  nameButtom: 'Add to chart',
                  color: mainColor,
                  image: 'assets/icons/addCart.png',
                  isMini: true,
                ),
              ]),
        ),
        Container(
          transformAlignment: Alignment.centerRight,
          //alignment: Alignment.centerRight,
          width: 40.w,
          height: 40.h,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: white,
              boxShadow: [
                BoxShadow(blurRadius: 10.r, color: placeholderColor)
              ]),
          child: IconButton(
            onPressed: () {
              //function();
            },
            icon: Icon(Icons.arrow_forward_ios_rounded),
            color: mainColor,
          ),
        ),
      ],
    );
  }
}
