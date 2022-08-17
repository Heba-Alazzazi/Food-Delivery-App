import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';

class RatingStar extends StatelessWidget {
  const RatingStar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: mainColor,
        ),
        Icon(
          Icons.star,
          color: mainColor,
        ),
        Icon(
          Icons.star,
          color: mainColor,
        ),
        Icon(
          Icons.star,
          color: mainColor,
        ),
        Icon(
          Icons.star,
          color: mainColor,
        ),
      ],
    );
  }
}
