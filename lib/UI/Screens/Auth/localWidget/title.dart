// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';

class TitleText extends StatelessWidget {
  TitleText({Key? key, required this.text}) : super(key: key);
  String text;
  var size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: 20, top: size.height * .0875),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 30, fontFamily: 'ExtraBold.otf'),
      ),
    );
  }
}
