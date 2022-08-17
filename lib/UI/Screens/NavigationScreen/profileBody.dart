import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/Global_Widget/CustomProfileImage.dart';
import 'package:meal_monkey/Global_Widget/button.dart';
import 'package:meal_monkey/Global_Widget/infoTextField.dart';
import 'package:meal_monkey/Global_Widget/smalText.dart';
import 'package:meal_monkey/UI/Auth/localWidget/customRowText.dart';
import 'package:meal_monkey/UI/Auth/localWidget/textfield.dart';
import 'package:meal_monkey/UI/Auth/localWidget/title.dart';
import 'package:meal_monkey/constant.dart';

import '../../Theme/TextStyle.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image.asset('assets/images/Profile-pic.png'),
          // CustomRishText(part1: '', part2: 'Edit Profile', function: () {}),
          // TitleText(text: "Hi there Emilia!"),
          // SmalText(text: 'Sign out'),
          SizedBox(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomProfileImage(),
                SizedBox(
                  height: 18.h,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit),
                        color: mainColor,
                      ),
                      CustomRishText(
                          part1: '', part2: 'Edit Profile', function: () {}),
                    ]),
                Padding(
                  padding: EdgeInsets.only(top: 11.h, bottom: 4.h),
                  child: Text(
                    'Hi there Emilia!',
                    style: resTextStyle,
                  ),
                ),
                Text(
                  'Sign Out',
                  style: smalTextStyle.copyWith(fontSize: 11.sp),
                ),
                SizedBox(
                  height: 47.h,
                ),
                InfoTextField(),
                InfoTextField(),
                InfoTextField(),
                InfoTextField(),
                InfoTextField(),
                InfoTextField(),
                Button(function: () {}, nameButtom: 'Save'),
                SizedBox(
                  height: 30.h,
                )
                // CustomTextField(hintText: 'Name', controller: emailController)
              ],
            ),
            //height: 500.h,
            // child: UserAccountsDrawerHeader(
            //   currentAccountPictureSize: Size.square(102.h),
            //   arrowColor: Colors.black,
            //   decoration: BoxDecoration(
            //       // color: white
            //       ),
            //   currentAccountPicture: CustomProfileImage(),
            //   accountName:

            //   // accountEmail: Column(
            //   //   children: [
            //   //     TitleText(text: 'Hi there Emilia!'),
            //   //     Text('Sign Out'),
            //   //   ],
            //   // )
            // ),
          )
        ],
      ),
    ));
  }
}
