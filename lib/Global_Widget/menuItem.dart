import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/UI/Theme/TextStyle.dart';

import '../constant.dart';

class MenuItemWidget extends StatelessWidget {
  MenuItemWidget(
      {Key? key,
      required this.image,
      required this.item,
      required this.noItem,
      required this.function})
      : super(key: key);
  String image, item, noItem;
  Function function;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 40, left: 50, top: 30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), bottomLeft: Radius.circular(40)),
          color: white,
          boxShadow: [BoxShadow(blurRadius: 10, color: placeholderColor)]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Transform.translate(offset: Offset(-40, 0), child: Image.asset(image)),
        Transform.translate(
          offset: Offset(-50, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(item, style: menuTextStyle),
              Text(noItem, style: descriptionTextStyle.copyWith(fontSize: 11))
            ],
          ),
        ),
        // SizedBox(
        //   width: 100,
        // ),
        Transform.translate(
          offset: Offset(18.w, 0),
          child: Container(
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
                function();
              },
              icon: Icon(Icons.arrow_forward_ios_rounded),
              color: mainColor,
            ),
          ),
        ),
      ]),
    );
  }
}
