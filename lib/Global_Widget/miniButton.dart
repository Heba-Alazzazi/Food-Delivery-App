import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class MiniButton extends StatelessWidget {
  MiniButton({Key? key, required this.icon, required this.function})
      : super(key: key);
  IconData icon;
  Function function;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: Size(52.w, 30.h),
            primary: mainColor,
            shape: RoundedRectangleBorder(borderRadius: borderCircle)),
        onPressed: () {
          // function();
        },
        child: Icon(
          icon,
          size: 20.r,

          //Theme.of(context).textTheme.bodyMedium
        ));
  }
}
