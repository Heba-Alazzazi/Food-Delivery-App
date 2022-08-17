import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constant.dart';

class CustomProfileImage extends StatelessWidget {
  const CustomProfileImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 102.w,
            height: 102.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage('assets/images/user.png'),
                  fit: BoxFit.fill),
            ),
          ),
          Positioned(
            bottom: 0.h,
            child: Container(
                //clipBehavior: Clip.hardEdge,
                transformAlignment: Alignment.bottomCenter,
                height: 23.4.h,
                width: 75.w,
                //padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    backgroundBlendMode: BlendMode.overlay,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(
                          50.r,
                        ),
                        bottomRight: Radius.circular(
                          50.r,
                        )),
                    color: Color(0xff000000).withOpacity(.26)),
                child: Image.asset(
                  'assets/icons/cam.png',
                  //scale: ScreenUtil().scaleHeight,
                )),
          ),
        ],
      ),
    );
  }
}
