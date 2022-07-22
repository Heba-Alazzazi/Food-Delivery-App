// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:meal_monkey/UI/Screens/widget/smalText.dart';
import 'package:meal_monkey/constant.dart';

class Home extends StatefulWidget {
  Home({Key? key, required this.userInex}) : super(key: key);
  int userInex;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: Text(
          'Good morning ${users[widget.userInex].name}!',
          style: const TextStyle(
              color: black, fontSize: 20, fontFamily: 'ExtraBold.otf'),
        ),
        actions: [
          // const SizedBox(
          //   width: 34,
          // ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_sharp,
                color: black,
              )),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmalText(text: 'Delivering to'),
              DropdownButton(
                  
                  iconEnabledColor: mainColor,
                  iconDisabledColor: mainColor,
                  icon: Icon(Icons.keyboard_arrow_down),
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Bold.otf',
                      color: seconderyFontColor),
                  items: [DropdownMenuItem(child: Text('Current Location'))],
                  onChanged: null),
            ],
          ),
        ),
      ),
    );
  }
}
