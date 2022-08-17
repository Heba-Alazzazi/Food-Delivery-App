import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Model/Data.dart';
import '../constant.dart';

class CustomMostPopularCard extends StatelessWidget {
  CustomMostPopularCard({Key? key, required this.data}) : super(key: key);
  var size;
  Data data;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(bottom: 20, right: 20),
      height: size.height * .27,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            data.image,
            fit: BoxFit.fitWidth,
          ),
          Text(
            data.name,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: primaryFontColor),
          ),
          Row(
            children: [
              Text(
                ' ${data.type} .  ${data.type2}     ',
                style: const TextStyle(
                    fontSize: 12,
                    color: placeholderColor,
                    ),
              ),
              const Icon(
                Icons.star,
                color: mainColor,
              ),
              Text(
                data.rating,
                style: TextStyle(color: mainColor, fontSize: 11),
              ),
            ],
          )
        ],
      ),
    );
  }
}
