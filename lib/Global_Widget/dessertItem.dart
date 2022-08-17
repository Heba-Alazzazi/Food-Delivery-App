import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meal_monkey/UI/Screens/descreptionProduct.dart';
import 'package:meal_monkey/constant.dart';

import '../Model/Data.dart';

class DessertItem extends StatelessWidget {
  DessertItem({Key? key, required this.data}) : super(key: key);
  Data data;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => Navigator.of(context).push(goTo(DescreptionProduct()))),
      child: Container(
        alignment: Alignment.center,
        height: 190,
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(data.image), fit: BoxFit.fill),
        ),
        child: Transform.translate(
          offset: Offset(20, 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.name,
                style: TextStyle(
                    color: white, fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.,
                children: [
                  Icon(
                    Icons.star,
                    color: mainColor,
                  ),
                  Text(
                    '  ${data.rating} ',
                    style: TextStyle(
                      color: mainColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    ' ${data.type} ',
                    style: TextStyle(
                      color: white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  redPoint,
                  Text(
                    '${data.type2} ',
                    style: TextStyle(
                      color: white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
