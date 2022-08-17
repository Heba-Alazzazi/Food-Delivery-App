import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meal_monkey/constant.dart';

class TypeCard extends StatelessWidget {
  TypeCard({Key? key, required this.image, required this.text})
      : super(key: key);
  String image;
  String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image),
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: primaryFontColor,
                fontSize: 14),
          )
        ],
      ),
    );
  }
}
