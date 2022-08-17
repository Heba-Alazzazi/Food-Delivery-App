import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meal_monkey/Global_Widget/button.dart';
import 'package:meal_monkey/Global_Widget/smalText.dart';

import '../../../Global_Widget/RestaurentCard.dart';
import '../../../Global_Widget/customMostPopularCard.dart';
import '../../../Model/Data.dart';

class OfferBody extends StatelessWidget {
  const OfferBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SmalText(text: 'Find discounts, Offers special \n meals and more!'),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Button(function: () {}, nameButtom: 'Check Offers'),
        ),
        Expanded(
          child: ListView.builder(
              // scrollDirection:Axis. ,
              shrinkWrap: true,
              //physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: ((context, index) =>
                  RestaurentCard(data: Model.restaurent[index]))),
        ),
      ],
    ));
  }
}
