import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meal_monkey/Global_Widget/menuItem.dart';
import 'package:meal_monkey/Global_Widget/search.dart';
import 'package:meal_monkey/UI/Auth/localWidget/subtitle.dart';
import 'package:meal_monkey/UI/Auth/localWidget/title.dart';
import 'package:meal_monkey/UI/Screens/dessert.dart';
import 'package:meal_monkey/constant.dart';

class MenuBody extends StatelessWidget {
  MenuBody({Key? key}) : super(key: key);
  var size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Search(),
          Stack(
            children: [
              Container(
                //alignment: Alignment.topLeft,
                width: size.width * .26,
                height: size.height * .60625,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: mainColor,
                ),
              ),
              Column(
                children: [
                  MenuItemWidget(
                      image: 'assets/images/food.png',
                      item: 'Food',
                      noItem: '120 Item',
                      function: () {}),
                  MenuItemWidget(
                      image: 'assets/images/beverages.png',
                      item: 'Beverages',
                      noItem: '220 Item',
                      function: () {}),
                  MenuItemWidget(
                      image: 'assets/images/desert.png',
                      item: 'Dessert',
                      noItem: '155 Item',
                      function: () {
                        Navigator.push(context, goTo(Dessert()));
                      }),
                  MenuItemWidget(
                      image: 'assets/images/promotion.png',
                      item: 'Promotions',
                      noItem: '25 Item',
                      function: () {}),
                ],
              )
            ],
          )
          // Stack(children: [
          //   SizedBox(
          //     width: size.width,
          //   ),
          //   Container(
          //     //alignment: Alignment.topLeft,
          //     width: size.width * .26,
          //     height: size.height * .60625,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.only(
          //           topRight: Radius.circular(30),
          //           bottomRight: Radius.circular(30)),
          //       color: mainColor,
          //     ),
          //   ),
          //   Positioned(
          //     top: 20,
          //     left: 100,
          //     width: double.infinity,
          //     height: 80,
          //     child: Material(
          //       //shadowColor: white,
          //       color: white,
          //       elevation: 7,
          //       borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(40),
          //           bottomLeft: Radius.circular(40)),
          //       child: ListTile(
          //         //contentPadding: EdgeInsets.only(right: 20),
          //         trailing: CircleAvatar(
          //             child: IconButton(
          //           onPressed: () {},
          //           icon: Icon(Icons.arrow_forward_ios),
          //         )),
          //         title: Text('Food'),
          //         subtitle: Text('120 items'),
          //         //minLeadingWidth: 60,
          //         leading: Transform.translate(
          //             offset: Offset(-20, 0),
          //             child: Image.asset(
          //               'assets/images/food.png',
          //               fit: BoxFit.fill,
          //             )),
          //       ),
          //     ),
          //   ),
          // ]),
        ],
      ),
    ));
  }
}
