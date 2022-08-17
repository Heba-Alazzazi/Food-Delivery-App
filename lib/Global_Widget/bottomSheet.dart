import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/UI/Auth/localWidget/socialButton.dart';
import 'package:meal_monkey/UI/Auth/localWidget/textfield.dart';
import 'package:meal_monkey/constant.dart';

import '../UI/Theme/TextStyle.dart';

class CustomBottomSheet extends StatefulWidget {
  CustomBottomSheet({Key? key}) : super(key: key);

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  bool switchState = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 643.h,
      padding: EdgeInsets.only(right: 21.w, left: 21.w, top: 13.5.h),
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Add Credit/Debit Card',
                    style: menuTextStyle.copyWith(
                      fontSize: 14,
                    )),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            Divider(
              color: Color(0xff707070),
              thickness: 1,
            ),
            CustomTextField(
              hintText: 'Card Number',
              isBottomSheet: true,
            ),
            Row(
              children: [
                Text(
                  'Expiry',
                  style: buttonTextStyle.copyWith(
                      color: primaryFontColor, fontSize: 14),
                )
              ],
            ),
            CustomTextField(
              hintText: 'Security Code',
              isBottomSheet: true,
            ),
            CustomTextField(
              hintText: 'First Name',
              isBottomSheet: true,
            ),
            CustomTextField(
              hintText: 'Last Name',
              isBottomSheet: true,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'You can remove this card',
                  style: smalTextStyle,
                ),
                Switch(
                    value: switchState,
                    onChanged: (val) {
                      setState(() {
                        switchState = val;
                      });
                    })
              ],
            ),
            SocialButton(
                function: () {},
                nameButtom: 'Add Card',
                color: mainColor,
                image: 'assets/icons/add.png')
          ]),
    );
  }
}
