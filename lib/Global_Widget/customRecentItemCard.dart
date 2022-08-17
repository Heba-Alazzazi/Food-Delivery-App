import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Model/Data.dart';
import '../constant.dart';

class CustomRecentItemCard extends StatelessWidget {
  CustomRecentItemCard({Key? key, required this.data}) : super(key: key);
  Data data;
  var size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return ListTile(
      minVerticalPadding: 20.h,
      minLeadingWidth: 75.w,
      leading: Image.asset(
        data.image,
        fit: BoxFit.fill,
        width: 70.w,
      ),
      title: Text(
        data.name,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: primaryFontColor, fontSize: 18),
      ),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${data.type} .  ${data.type2} ',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                color: placeholderColor,
                fontSize: 11),
          ),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: mainColor,
                size: 20,
              ),
              Text(
                data.rating,
                style: TextStyle(color: mainColor, fontSize: 11),
              ),
              Text(
                data.noOfRating,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: placeholderColor,
                    fontSize: 11),
              ),
            ],
          )
        ],
      ),
    );
  }
}
