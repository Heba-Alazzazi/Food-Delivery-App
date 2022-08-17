import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/Global_Widget/appBar..dart';
import 'package:meal_monkey/Global_Widget/cart.dart';
import 'package:meal_monkey/Global_Widget/customDropDown.dart';
import 'package:meal_monkey/Global_Widget/miniButton.dart';
import 'package:meal_monkey/Global_Widget/ratingStar.dart';
import 'package:meal_monkey/UI/Auth/localWidget/title.dart';
import 'package:meal_monkey/UI/Theme/TextStyle.dart';
import 'package:meal_monkey/constant.dart';

class DescreptionProduct extends StatelessWidget {
  const DescreptionProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: '',
        withBack: true,
        color: white,
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Image.asset(
                'assets/images/single.png',
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: 365.h,
              ),
              Transform.translate(
                offset: Offset(0, -57.h),
                child: Container(
                  // constraints: BoxConstraints(),
                  padding: EdgeInsets.only(top: 29.h, left: 22.w, right: 22.w),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.r),
                          topRight: Radius.circular(50.r)),
                      color: white),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tandoori Chicken Pizza',
                          style: menuTextStyle,
                        ),
                        RatingStar(),
                        Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '4 star Rating\n \n ',
                              // textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: mainColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 11.sp),
                            ),
                            RichText(
                              textAlign: TextAlign.right,
                              text: TextSpan(
                                  text: 'RS. 750\n',
                                  style: titleTextStyle,
                                  children: [
                                    TextSpan(
                                      text: '/per Portion',
                                      style: descriptionTextStyle.copyWith(
                                          color: primaryFontColor),
                                    )
                                  ]),
                            ),
                          ],
                        ),
                        Text(
                          'Description\n',
                          style: resTextStyle.copyWith(fontSize: 14.sp),
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada\n\n',
                          style: descriptionTextStyle.copyWith(
                              color: seconderyFontColor),
                        ),
                        Divider(
                          color: fillColor,
                          thickness: 1,
                        ),
                        Text(
                          '\nCustomize your Order',
                          style: resTextStyle.copyWith(fontSize: 14.sp),
                        ),
                        CustomDropDown(
                          title: '- Select the size of portion -',
                        ),
                        CustomDropDown(title: '- Select the ingredients -'),
                        Padding(
                          padding: EdgeInsets.only(top: 28.h, bottom: 34.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Number of Portions',
                                style: resTextStyle.copyWith(fontSize: 14.sp),
                              ),
                              MiniButton(icon: Icons.remove, function: () {}),
                              MiniButton(
                                  icon: Icons.two_k_plus_outlined,
                                  function: () {}),
                              MiniButton(icon: Icons.add, function: () {}),
                            ],
                          ),
                        ),
                        Cart(),
                      ]),
                ),
              ),
            ],
          ),
          Positioned(
            right: 21.w,
            top: 280.h,
            child: Image.asset('assets/images/fav.png'),
          )
        ]),
      ),
    );
  }
}
