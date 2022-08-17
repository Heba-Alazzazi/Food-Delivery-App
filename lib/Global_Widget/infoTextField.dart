import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/UI/Theme/TextStyle.dart';
import 'package:meal_monkey/constant.dart';

class InfoTextField extends StatelessWidget {
  const InfoTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 17.h, left: 21.w, right: 21.w),
      child: TextFormField(
        initialValue: 'Heba',
        decoration: InputDecoration(
            constraints: BoxConstraints(minHeight: 56.h),
            //labelText: 'Heba',
            label: Transform.translate(
                offset: Offset(0, 20.h),
                child: Column(
                  children: [
                    Text(
                      'Name',
                      style: smalTextStyle,
                    ),
                    //   SizedBox(
                    //     height: 10.h,
                    //   )
                  ],
                )),
            focusedErrorBorder: outlineInputBorder,
            errorStyle: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w300),
            errorBorder: outlineInputBorder,
            disabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            contentPadding:
                const EdgeInsets.only(left: 37, top: 20, bottom: 20),
            //hintText: widget.hintText,
            border: InputBorder.none,
            fillColor: fillColor,
            filled: true,
            hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: placeholderColor)),
      ),
    );
  }
}
