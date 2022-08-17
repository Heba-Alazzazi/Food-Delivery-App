import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/UI/Theme/TextStyle.dart';
import 'package:meal_monkey/constant.dart';

class Notification_Inbox_Box extends StatelessWidget {
  Notification_Inbox_Box(
      {Key? key,
      required this.title,
      this.subTitle = "",
      this.isInbox = false,
      this.isRead = false,
      this.isAboutUs = false})
      : super(key: key);
  bool isRead = false;
  String title;
  String subTitle;
  bool isInbox;
  bool isAboutUs;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isRead ? white : fillColor,
      // padding: EdgeInsets.only(top: 50.h),
      height: 88.h,
      child: ListTile(
        //style: ListTileStyle.drawer,
        minVerticalPadding: 0,
        minLeadingWidth: 10.w,
        leading: CircleAvatar(
          backgroundColor: mainColor,
          radius: 5.r,
        ),

        title: Text(
          title,
          style: appBarTextStyle.copyWith(fontSize: 14.sp),
          // textAlign: TextAlignVertical.top,
        ),
        subtitle: Visibility(
          visible: !isAboutUs,
          child: Text(
            subTitle,
            maxLines: 3,
            style: appBarTextStyle.copyWith(
                fontSize: 12.sp, color: placeholderColor),
          ),
        ),
        trailing: Visibility(
          visible: isInbox,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '6th July',
                style: TextStyle(
                    color: seconderyFontColor,
                    fontSize: 9,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 25.h,
              ),
              Icon(
                Icons.star,
                color: mainColor,
                size: 20.r,
              )
            ],
          ),
        ),
      ),
    );
  }
}
