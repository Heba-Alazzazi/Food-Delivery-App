import 'package:flutter/material.dart';

import '../../../Global_Widget/RestaurentCard.dart';
import '../../../Global_Widget/customMostPopularCard.dart';
import '../../../Global_Widget/customRecentItemCard.dart';
import '../../../Global_Widget/customRowView.dart';
import '../../../Global_Widget/search.dart';
import '../../../Global_Widget/smalText.dart';
import '../../../Global_Widget/typeCard.dart';
import '../../../Model/Data.dart';
import '../../../constant.dart';

class HomeBody extends StatefulWidget {
  HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  var heightRes;

  int countRes = 1;

  var size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    (countRes == 1)
        ? heightRes = size.height * .34
        : heightRes = size.height * .34 * countRes;
    return SafeArea(
      child: Container(
        //padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SmalText(text: 'Delivering to'),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: DropdownButton(
                    underline: Container(),
                    //hint: Text('Current Location'),
                    iconEnabledColor: mainColor,
                    iconDisabledColor: mainColor,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: seconderyFontColor),
                    items: const [
                      DropdownMenuItem(child: Text('Current Location')),
                      // DropdownMenuItem(child: Text('Rafah')),
                      // DropdownMenuItem(child: Text('Burij'))
                    ],
                    onChanged: null),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Search(),
              ),
              SizedBox(
                height: size.height * .17,
                child: ListView(
                    padding: EdgeInsets.only(left: 20),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      TypeCard(
                          image: 'assets/images/offers.png', text: 'Offers'),
                      TypeCard(
                          image: 'assets/images/sir.png', text: 'Sri Lankan'),
                      TypeCard(
                          image: 'assets/images/italy.png', text: 'Italian'),
                      TypeCard(
                          image: 'assets/images/india.png', text: 'Indian'),
                    ]),
              ),
              CustomRowView(
                  text: 'Popular Restaurents',
                  function: () {
                    setState(() {
                      countRes = Model.restaurent.length;
                      print('count res $countRes');
                      heightRes = heightRes * 3;
                    });
                  }),
              SizedBox(
                width: size.width,
                height: heightRes,
                child: ListView.builder(
                    // scrollDirection:Axis. ,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: countRes,
                    itemBuilder: ((context, index) =>
                        RestaurentCard(data: Model.restaurent[index]))),
              ),
              CustomRowView(text: 'Most Popular', function: () {}),
              SizedBox(
                //width: double.infinity,
                height: size.height * .27,
                child: ListView.builder(
                    padding: EdgeInsets.only(left: 20),
                    scrollDirection: Axis.horizontal,
                    itemCount: Model.popular.length,
                    itemBuilder: ((context, index) =>
                        CustomMostPopularCard(data: Model.popular[index]))),
              ),
              CustomRowView(text: 'Recent Item', function: () {}),
              SizedBox(
                  width: double.infinity,
                  height: size.height * .122 * 3,
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) =>
                          CustomRecentItemCard(data: Model.recentItem[index]))),
            ],
          ),
        ),
      ),
    );
  }
}
