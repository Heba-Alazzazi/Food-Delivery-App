import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/Global_Widget/button.dart';
import 'package:meal_monkey/Global_Widget/myOrder_listTile..dart';
import 'package:meal_monkey/UI/Theme/TextStyle.dart';
import 'package:meal_monkey/constant.dart';
import 'package:meal_monkey/provider/myProvider.dart';
import 'package:provider/provider.dart';

import '../../../../Global_Widget/customRecentItemCard.dart';
import '../../../../Model/Data.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: double.infinity,
                height: 84.h,
                child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) =>
                        CustomRecentItemCard(data: Model.recentItem[index]))),
            Container(
              margin: EdgeInsets.only(top: 37.h, bottom: 16.h),
              // padding: EdgeInsets.symmetric(horizontal: 21.w),
              //height: 231.h,
              color: fillColor,
              child: Column(
                children: [
                  MyOrder_ListTile(
                      title: 'Beef Burger x1',
                      title_textStyle:
                          smalTextStyle.copyWith(color: primaryFontColor),
                      tralling: '\$ 16',
                      tralling_textStyle: menuTextStyle.copyWith(fontSize: 13)),
                  MyOrder_ListTile(
                      title: 'Classic Burger x1',
                      title_textStyle:
                          smalTextStyle.copyWith(color: primaryFontColor),
                      tralling: '\$ 14',
                      tralling_textStyle: menuTextStyle.copyWith(fontSize: 13)),
                  MyOrder_ListTile(
                      title: 'Cheese Chicken Burger x1',
                      title_textStyle:
                          smalTextStyle.copyWith(color: primaryFontColor),
                      tralling: '\$ 17',
                      tralling_textStyle: menuTextStyle.copyWith(fontSize: 13)),
                  MyOrder_ListTile(
                      title: 'Chicken Legs Basket x1',
                      title_textStyle:
                          smalTextStyle.copyWith(color: primaryFontColor),
                      tralling: '\$ 15',
                      tralling_textStyle: menuTextStyle.copyWith(fontSize: 13)),
                  MyOrder_ListTile(
                      title: 'French Fries Large x1',
                      title_textStyle:
                          smalTextStyle.copyWith(color: primaryFontColor),
                      tralling: '\$ 6',
                      withDivider: false,
                      tralling_textStyle: menuTextStyle.copyWith(fontSize: 13)),
                ],
              ),
            ),
            MyOrder_ListTile(
                title: 'Delivery Instrusctions',
                title_textStyle: menuTextStyle.copyWith(fontSize: 13),
                tralling: 'Add Notes',
                tralling_textStyle:
                    menuTextStyle.copyWith(fontSize: 13, color: mainColor)),
            MyOrder_ListTile(
                title: 'Sub Total',
                title_textStyle: menuTextStyle.copyWith(fontSize: 13),
                tralling: '\$ 68',
                withDivider: false,
                tralling_textStyle:
                    menuTextStyle.copyWith(fontSize: 13, color: mainColor)),
            MyOrder_ListTile(
                title: 'Delivery Cost',
                title_textStyle: menuTextStyle.copyWith(fontSize: 13),
                tralling: '\$2',
                tralling_textStyle:
                    menuTextStyle.copyWith(fontSize: 13, color: mainColor)),
            MyOrder_ListTile(
                title: 'Total',
                title_textStyle: menuTextStyle.copyWith(fontSize: 13),
                tralling: '\$ 70',
                withDivider: false,
                tralling_textStyle:
                    menuTextStyle.copyWith(fontSize: 22, color: mainColor)),
            Consumer<MyProvider>(builder: ((context, value, child) {
              return Button(
                  function: () {
                    value.changeProfileIndex(6);
                  },
                  nameButtom: 'CheckOut');
            })),
            SizedBox(
              height: 60.h,
            ),
          ],
        ),
      ),
    );
  }
}
