import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meal_monkey/UI/Theme/TextStyle.dart';
import 'package:meal_monkey/provider/myProvider.dart';
import 'package:provider/provider.dart';

import '../constant.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar(
      {Key? key,
      required this.title,
      this.withBack = false,
      this.color = primaryFontColor})
      : super(key: key);
  String title;
  Color color = primaryFontColor;
  bool withBack = false;
  @override
  Size get preferredSize => Size.fromHeight(80);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      elevation: 0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      title: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<MyProvider>(
            builder: ((context, value, child) {
              return Visibility(
                visible: withBack,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: color,
                  ),
                  onPressed: () {
                    if (value.indexMore > 0) {
                      value.backMoreScreen();
                    } else {
                      Navigator.pop(context);
                    }
                  },
                ),
              );
            }),
          ),
          // Visibility(
          //     visible: !withBack,
          //     child: SizedBox(
          //       width: 15,
          //     )),
          Text(title, style: appBarTextStyle),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_sharp,
              color: color,
            )),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
