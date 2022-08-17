import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/Global_Widget/appBar..dart';
import 'package:meal_monkey/Global_Widget/search.dart';
import 'package:meal_monkey/Global_Widget/succesfullScreen.dart';
import 'package:meal_monkey/constant.dart';

class ChangeAddress extends StatelessWidget {
  const ChangeAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'CheckOut',
        withBack: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/map.png',
              height: 500.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.h,
            ),
            Search(),
            ListTile(
              onTap: (() {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    isScrollControlled: true,
                    // constraints: BoxConstraints(maxHeight: 700.h),
                    context: context,
                    builder: (context) {
                      return SuccesfullScreen();
                    });
              }),
              title: Text('Choose a saved place'),
              trailing: Icon(Icons.arrow_forward_ios),
              leading: CircleAvatar(
                child: Icon(
                  Icons.star,
                  color: Color(0xffFC6011),
                ),
                backgroundColor: Color.fromARGB(255, 233, 162, 143),
              ),
            )
          ],
        ),
      )),
    );
  }
}
