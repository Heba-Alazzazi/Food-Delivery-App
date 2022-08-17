// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:meal_monkey/UI/Screens/mealMonkey.dart';
import 'package:meal_monkey/constant.dart';

import '../../Global_Widget/CustomPage.dart';

class Introduction extends StatefulWidget {
  const Introduction({Key? key}) : super(key: key);

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          child: PageView(
            scrollDirection: Axis.horizontal,
            controller: controller,
            children: [
              CustomPage(
                  image: 'assets/images/page1.png',
                  function: () {
                    
                    controller.nextPage(
                        duration: Duration(milliseconds: 200), curve: Curves.ease);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => CustomPage(
                    //             image: 'assets/images/page2.png',
                    //             function: () {
                    //               Navigator.push(
                    //                   context,
                    //                   MaterialPageRoute(
                    //                       builder: (context) => CustomPage(
                    //                           image: 'assets/images/page3.png',
                    //                           function: () {
                    //                             Navigator.push(
                    //                                 context,
                    //                                 MaterialPageRoute(
                    //                                     builder: (context) =>
                    //                                         const MealMonkey()));
                    //                           })));
                    //             })));
                  }),
              CustomPage(
                  image: 'assets/images/page2.png',
                  function: () {
                    controller.nextPage(
                        duration: Duration(milliseconds: 200), curve: Curves.ease);
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => CustomPage(
                    //             image: 'assets/images/page3.png',
                    //             function: () {
                    //               Navigator.push(
                    //                   context,
                    //                   MaterialPageRoute(
                    //                       builder: (context) =>
                    //                           const MealMonkey()));
                    //             })));
                  }),
              CustomPage(
                  image: 'assets/images/page3.png',
                  function: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MealMonkey()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
