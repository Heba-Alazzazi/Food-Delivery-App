import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/UI/Theme/TextStyle.dart';
import 'package:meal_monkey/constant.dart';

class CustomDropDown extends StatelessWidget {
  CustomDropDown({Key? key, required this.title}) : super(key: key);
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 14.h,
      ),
      padding:
          EdgeInsets.only(left: 32.w, top: 12.h, bottom: 14.h, right: 12.w),
      height: 45.h,
      color: fillColor,
      child: DropdownButton(
          isExpanded: true,

          //dropdownColor: fillColor,
          icon: Icon(
            Icons.keyboard_arrow_down_outlined,
            color: Color(0xff828282),
          ),
          underline: Container(),
          items: [
            DropdownMenuItem(
                child: Text(
              title,
              style: smalTextStyle.copyWith(color: primaryFontColor),
            )),
          ],
          onChanged: null),
    );
  }
}
