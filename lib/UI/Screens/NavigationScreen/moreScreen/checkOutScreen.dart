import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/Global_Widget/button.dart';
import 'package:meal_monkey/Global_Widget/myOrder_listTile..dart';
import 'package:meal_monkey/Global_Widget/paymentMethode.dart';
import 'package:meal_monkey/Global_Widget/smalText.dart';
import 'package:meal_monkey/UI/Screens/changeAddress.dart';
import 'package:meal_monkey/constant.dart';

import '../../../Theme/TextStyle.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: SmalText(text: 'Delivery Address'),
          ),
          MyOrder_ListTile(
              title: '653 Nostrand Ave., \nBrooklyn, NY 11216',
              title_textStyle: resTextStyle.copyWith(fontSize: 15),
              tralling: 'Change',
              withDivider: false,
              tralling_textStyle:
                  resTextStyle.copyWith(fontSize: 13, color: mainColor)),
          Divider(
            color: Color(0xffF6F6F6),
            thickness: 12,
            height: 12.h,
          ),
          MyOrder_ListTile(
              title: 'titlePayment method',
              title_textStyle:
                  TextStyle(color: seconderyFontColor, fontSize: 12),
              tralling: '+   Add Card',
              tralingIsWidget: true,
              withDivider: false,
              tralling_textStyle:
                  resTextStyle.copyWith(fontSize: 13, color: mainColor)),
          PaymentMethode(
              titleWidget: Text('Cash on delivery'), valueRadio: Payment.cash),
          PaymentMethode(
              titleWidget: Row(
                children: [
                  Image.asset('assets/icons/visa.png'),
                  Text('  **** **** **** 2817')
                ],
              ),
              valueRadio: Payment.visa),
          PaymentMethode(
              titleWidget: Row(
                children: [
                  Image.asset('assets/icons/payment.png'),
                  Text('  johndoe@email.com')
                ],
              ),
              valueRadio: Payment.gmail),
          MyOrder_ListTile(
              title: 'Sub Total',
              title_textStyle: smalTextStyle.copyWith(color: primaryFontColor),
              tralling: '\$ 68',
              withDivider: false,
              tralling_textStyle: menuTextStyle.copyWith(fontSize: 13)),
          MyOrder_ListTile(
              title: 'Delivery Cost',
              title_textStyle: smalTextStyle.copyWith(color: primaryFontColor),
              tralling: '\$ 2',
              withDivider: false,
              tralling_textStyle: menuTextStyle.copyWith(fontSize: 13)),
          MyOrder_ListTile(
              title: 'Discount',
              title_textStyle: smalTextStyle.copyWith(color: primaryFontColor),
              tralling: '\$ -4',
              tralling_textStyle: menuTextStyle.copyWith(fontSize: 13)),
          MyOrder_ListTile(
              title: 'Total',
              title_textStyle: smalTextStyle.copyWith(color: primaryFontColor),
              tralling: '\$ 66',
              withDivider: false,
              tralling_textStyle: menuTextStyle.copyWith(fontSize: 13)),
          Divider(
            color: Color(0xffF6F6F6),
            thickness: 12,
            height: 50.h,
          ),
          Button(
              function: () {
                Navigator.of(context).push(goTo(ChangeAddress()));
              },
              nameButtom: 'Send Order'),
          SizedBox(
            height: 50.h,
          )
        ],
      ),
    ));
  }
}
