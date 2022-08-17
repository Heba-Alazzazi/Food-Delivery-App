import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constant.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
      child: TextField(
        decoration: InputDecoration(
            focusedErrorBorder: outlineInputBorder,
            errorStyle:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            errorBorder: outlineInputBorder,
            disabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            // contentPadding: EdgeInsets.only(left: 80),
            hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: placeholderColor),
            hintText: 'Search food',
            fillColor: fillColor,
            filled: true,
            prefixIconConstraints: const BoxConstraints(minWidth: 60),
            prefixIcon: IconButton(
              iconSize: 35,
              onPressed: () {},
              icon: Image.asset('assets/icons/search.png'),
            )),
      ),
    );
  }
}
