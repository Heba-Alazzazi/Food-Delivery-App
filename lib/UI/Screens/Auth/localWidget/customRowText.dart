// import 'package:flutter/cupertino.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:meal_monkey/constant.dart';

// class CustomRishText extends StatelessWidget {
//   CustomRishText({Key? key, required this.part1, required this.part2})
//       : super(key: key);
//   String part1, part2;
//   @override
//   Widget build(BuildContext context) {
//     return RichText(
//         text: TextSpan(
//             text: part1,
//             style: TextStyle(fontSize: 14, color: seconderyFontColor),
//             children: [
//           TextSpan(text: part2, style: const TextStyle(color: mainColor))
//         ])

// ignore_for_file: must_be_immutable, file_names

//         );
//   }
// }
import 'package:flutter/material.dart';
import 'package:meal_monkey/constant.dart';

class CustomRishText extends StatelessWidget {
  CustomRishText(
      {Key? key,
      required this.part1,
      required this.part2,
      required this.function})
      : super(key: key);
  String part1, part2;
  Function function;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          part1,
          style: const TextStyle(
              fontSize: 14,
              color: seconderyFontColor,
              fontFamily: 'Medium.otf'),
        ),
        TextButton(
            onPressed: () {
              function();
            },
            child: Text(part2,
                style: const TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Metropolis-Bold.otf')))
      ],
    );
  }
}
