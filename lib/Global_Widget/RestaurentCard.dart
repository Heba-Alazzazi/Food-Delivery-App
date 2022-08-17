import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meal_monkey/Model/Data.dart';

import '../constant.dart';

class RestaurentCard extends StatefulWidget {
  RestaurentCard({Key? key, required this.data}) : super(key: key);
  Data data;

  @override
  State<RestaurentCard> createState() => _RestaurentCardState();
}

class _RestaurentCardState extends State<RestaurentCard> {
  var size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      height: size.height * .37,
      //width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            widget.data.image,
            fit: BoxFit.contain,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Text(
              widget.data.name,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: primaryFontColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: mainColor,
                ),
                Text(
                  widget.data.rating,
                  style: TextStyle(color: mainColor, fontSize: 11),
                ),
                Text(
                  '  ${widget.data.noOfRating} ${widget.data.type} .  ${widget.data.type2}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: placeholderColor,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
