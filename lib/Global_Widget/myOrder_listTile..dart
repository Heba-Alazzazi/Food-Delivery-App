import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bottomSheet.dart';

class MyOrder_ListTile extends StatelessWidget {
  MyOrder_ListTile(
      {Key? key,
      required this.title,
      required this.title_textStyle,
      required this.tralling,
      required this.tralling_textStyle,
      this.tralingIsWidget = false,
      this.withDivider = true})
      : super(key: key);
  String title;
  String tralling;
  TextStyle title_textStyle;
  TextStyle tralling_textStyle;
  bool tralingIsWidget;
  bool withDivider;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.w),
      child: Column(
        children: [
          ListTile(
            title: Text(
              title,
              style: title_textStyle,
            ),
            trailing: tralingIsWidget
                ? TextButton(
                    onPressed: () {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          isScrollControlled: true,
                          // constraints: BoxConstraints(maxHeight: 700.h),
                          context: context,
                          builder: (context) {
                            return CustomBottomSheet();
                          });
                    },
                    child: Text(
                      tralling,
                      style: tralling_textStyle,
                    ),
                  )
                : Text(
                    tralling,
                    style: tralling_textStyle,
                  ),
          ),
          Visibility(
            visible: withDivider,
            child: Divider(
              color: Color(0xff707070),
              thickness: 1,
            ),
          ),
        
        ],
      ),
    );
  }
}
