import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meal_monkey/Global_Widget/appBar..dart';
import 'package:meal_monkey/Global_Widget/dessertItem.dart';
import 'package:meal_monkey/Model/Data.dart';
import 'package:meal_monkey/constant.dart';

import '../../Global_Widget/search.dart';

class Dessert extends StatelessWidget {
  const Dessert({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: white,
      appBar: CustomAppBar(
        title: 'Dessert',
        withBack: true,
      ),
      body: Column(
        children: [
          Search(),
          Expanded(
              child: ListView.builder(
                  itemCount: Model.dessertItem.length,
                  itemBuilder: ((context, index) =>
                      DessertItem(data: Model.dessertItem[index]))))
        ],
      ),
    ));
  }
}
