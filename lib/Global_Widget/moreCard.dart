import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constant.dart';
import 'package:meal_monkey/provider/myProvider.dart';
import 'package:provider/provider.dart';

class MoreCard extends StatelessWidget {
  MoreCard(
      {Key? key,
      required this.icon,
      required this.title,
      required this.indexScreen,
      this.isNotification = false})
      : super(key: key);
  int indexScreen;
  String icon;
  String title;
  bool isNotification;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 30.w),
      child: Consumer<MyProvider>(
        builder: ((context, value, child) {
          return ListTile(
            onTap: () {
              value.changeProfileIndex(indexScreen);
            },
            minVerticalPadding: 20,
            contentPadding: EdgeInsets.only(top: 10, bottom: 10, left: 20),
            tileColor: Color(0xffF6F6F6),
            //style: ListTileStyle(),
            shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.sp),
                borderSide: BorderSide.none),
            leading: CircleAvatar(
              radius: 28.sp,
              backgroundColor: Color(0xffD8D8D8),
              child: Image.asset('assets/icons/$icon.png'),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(color: seconderyFontColor),
                ),
                Transform.translate(
                  offset: Offset(30, 0),
                  child: Visibility(
                      visible: isNotification,
                      child: CircleAvatar(
                        radius: 15.sp,
                        backgroundColor: Colors.red,
                        child: const Text(
                          '15',
                          style: TextStyle(color: white),
                        ),
                      )),
                )
              ],
            ),
            trailing: Transform.translate(
              offset: const Offset(18, 0),
              child: const CircleAvatar(
                backgroundColor: Color(0xffF6F6F6),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: seconderyFontColor,
                  size: 20,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
