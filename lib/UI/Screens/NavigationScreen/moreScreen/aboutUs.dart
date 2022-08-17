import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constant.dart';
import '../../../Theme/TextStyle.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ListTile(
            minLeadingWidth: 5.w,
            leading: CircleAvatar(
              backgroundColor: mainColor,
              radius: 3.r,
            ),
            title: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: appBarTextStyle.copyWith(
                  fontSize: 14.sp, color: seconderyFontColor),
              // textAlign: TextAlignVertical.top,
            ),
          ),
          ListTile(
            minLeadingWidth: 5.w,
            leading: CircleAvatar(
              backgroundColor: mainColor,
              radius: 3.r,
            ),
            title: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: appBarTextStyle.copyWith(
                  fontSize: 14.sp, color: seconderyFontColor),
              // textAlign: TextAlignVertical.top,
            ),
          ),
          ListTile(
            minLeadingWidth: 5.w,
            leading: CircleAvatar(
              backgroundColor: mainColor,
              radius: 3.r,
            ),
            title: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
              style: appBarTextStyle.copyWith(
                  fontSize: 14.sp, color: seconderyFontColor),
              // textAlign: TextAlignVertical.top,
            ),
          )
        ],
      ),
    );
  }
}
