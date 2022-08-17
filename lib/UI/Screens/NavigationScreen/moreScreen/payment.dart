import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/UI/Auth/localWidget/creatButton.dart';
import 'package:meal_monkey/UI/Auth/localWidget/socialButton.dart';
import 'package:meal_monkey/constant.dart';

import '../../../../Global_Widget/bottomSheet.dart';
import '../../../Theme/TextStyle.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 21.w, top: 28.h, bottom: 16.h),
            child: Text(
              'Customize your payment method',
              style: resTextStyle,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.w, right: 21.w, bottom: 18.5.h),
            child: Divider(
              color: Color(0xff707070),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 61.h),
            padding: EdgeInsets.only(right: 45.5.w, left: 45.5.w),
            height: 167.h,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xffF7F7F7), boxShadow: [
              BoxShadow(
                offset: Offset(0, 40),
                color: placeholderColor.withOpacity(.5),
                blurRadius: 50,
                //spreadRadius: 2
              )
            ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                row1(),
                Divider(
                  color: Color(0xff707070),
                ),
                row2(),
                Divider(
                  color: Color(0xff707070),
                ),
                Text(
                  'Other Methode',
                  style: resTextStyle.copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
          SocialButton(
              function: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    isScrollControlled: true,
                    // constraints: BoxConstraints(maxHeight: 700.h),
                    context: context,
                    builder: (context) {
                      return CustomBottomSheet();
                    });
                // BottomSheet(
                //   onClosing: () => Navigator.of(context).pop(),
                //   builder: ((context) {
                //     return CustomBottomSheet();
                //   }),
                // );
                // showBottomSheet(
                //     context: context,
                //     builder: (context) {
                //       return Container();
                //     });
              },
              nameButtom: 'Add Another Credit/Debit Card',
              color: mainColor,
              image: 'assets/icons/add.png')
        ],
      ),
    );
  }
}

Widget row1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Cash/Card on delivery',
        style: resTextStyle.copyWith(fontSize: 12),
      ),
      Icon(
        Icons.check,
        color: mainColor,
        size: 35,
      ),
    ],
  );
}

Widget row2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Image.asset('assets/icons/visa.png'),
      Text('**** ****'),
      Text('2187'),
      CreatButton(
          function: () {},
          nameButtom: 'Delete Card',
          isMini: true,
          backgroundColor: Color(0xffF7F7F7),
          minimumSize: Size(87.w, 30.h))
    ],
  );
}
