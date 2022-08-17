// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/Global_Widget/appBar..dart';
import 'package:meal_monkey/Model/Data.dart';
import 'package:meal_monkey/constant.dart';
import 'package:meal_monkey/provider/myProvider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  Home({Key? key, this.userInex = 0}) : super(key: key);
  int userInex;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var size;
  var heightRes;
  int countRes = 1;
  late String title;
  List<String> titlesNavigationBar = [];

  int indexNav = 2;
  @override
  void initState() {
    // TODO: implement initState
    print('before ${Model.restaurent}');
    Model.creatRestaurentElement();
    Model.creatPopularElement();
    Model.creatRecentItem();
    Model.creatDessertElement();
    print('after ${Model.restaurent}');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    //title = 'Good morning ${users[widget.userInex].name}!';
    titlesNavigationBar = [
      'Menu',
      'Latest Offers',
      //'Good morning ${users[widget.userInex].name}!',
      'Good morning ',
      'Profile',
      'More',
    ];

    heightRes = size.height * .31;
    return Consumer<MyProvider>(builder: (context, obj, child) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        extendBody: true,
        backgroundColor: white,
        extendBodyBehindAppBar: true,
        //App Bar
        appBar: (indexNav == 4 && obj.indexMore !=0 )
            ? CustomAppBar(
                title: obj.titlesMoreScreen[obj.indexMore],
                withBack: true,
              )
            : CustomAppBar(title: titlesNavigationBar[indexNav]),
        //Body
        body: listOfNavigationItem[indexNav],

        bottomNavigationBar: Container(
          // elevation: 0,
          // color: Colors.transparent,
          decoration:
              const BoxDecoration(color: Colors.transparent, boxShadow: [
            // ignore: unnecessary_const
            const BoxShadow(
                blurStyle: BlurStyle.normal,
                color: fillColor,
                blurRadius: 15,
                spreadRadius: 10)
          ]),
          child: ClipPath(
            clipper: MyClipper(),
            child: BottomNavigationBar(
                elevation: 0,
                backgroundColor: white,
                currentIndex: indexNav,
                type: BottomNavigationBarType.fixed,
                onTap: (value) {
                  setState(() {
                    indexNav = value;
                  });
                },
                selectedItemColor: mainColor,
                unselectedItemColor: placeholderColor,
                showUnselectedLabels: true,
                items: [
                  BottomNavigationBarItem(
                    label: 'Menu',
                    icon: IconButton(
                        onPressed: null,
                        icon: Image.asset(
                          'assets/icons/menu.png',
                          color: indexNav == 0 ? mainColor : placeholderColor,
                        )),
                  ),
                  BottomNavigationBarItem(
                    label: 'Offer ',
                    icon: IconButton(
                        onPressed: null,
                        icon: Image.asset(
                          'assets/icons/offer.png',
                          color: indexNav == 1 ? mainColor : placeholderColor,
                        )),
                  ),
                  BottomNavigationBarItem(label: '', icon: Text('')),
                  BottomNavigationBarItem(
                    label: 'Profile',
                    icon: IconButton(
                        onPressed: null,
                        icon: Image.asset(
                          'assets/icons/person.png',
                          color: indexNav == 3 ? mainColor : placeholderColor,
                        )),
                  ),
                  BottomNavigationBarItem(
                      label: 'More',
                      icon: IconButton(
                          onPressed: null,
                          icon: Image.asset(
                            'assets/icons/more.png',
                            color: indexNav == 4 ? mainColor : placeholderColor,
                          ))),
                ]),
          ),
        ),
        //),
        // bottomNavigationBar: Container(
        //   decoration: BoxDecoration(
        //       //color: Colors.black,
        //       borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
        //       boxShadow: [
        //         // ignore: unnecessary_const
        //         const BoxShadow(
        //             blurStyle: BlurStyle.normal,
        //             color: fillColor,
        //             blurRadius: 15,
        //             spreadRadius: 15)
        //       ]),
        //   child: Theme(
        //     data: Theme.of(context)
        //         .copyWith(iconTheme: IconThemeData(color: white)),
        //     child: CurvedNavigationBar(
        //         index: indexNav,
        //         animationCurve: Curves.linear,
        //         backgroundColor: Colors.transparent,
        //         //color: Colors.black,
        //         buttonBackgroundColor: mainColor,
        //         onTap: (index) {
        //           setState(() {
        //             indexNav = index;
        //           });
        //         },
        //         items: [
        //           IconButton(
        //               onPressed: null,
        //               icon: Image.asset('assets/icons/menu.png')),
        //           IconButton(
        //               onPressed: null,
        //               icon: Image.asset(
        //                 'assets/icons/offer.png',
        //               )),
        //           IconButton(
        //               onPressed: null,
        //               icon: Image.asset(
        //                 'assets/icons/home.png',
        //               )),
        //           IconButton(
        //               onPressed: null,
        //               icon: Image.asset('assets/icons/person.png')),
        //           IconButton(
        //               onPressed: null,
        //               icon: Image.asset('assets/icons/more.png')),
        //         ]),
        //   ),
        // ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: GestureDetector(
          onTap: () {
            setState(() {
              indexNav = 2;
            });
          },
          child: CircleAvatar(
              radius: 40.r,
              backgroundColor: indexNav == 2 ? mainColor : placeholderColor,
              child: Image.asset(
                'assets/icons/home.png',
                scale: .8,
              )),
        ),
        // floatingActionButton: FloatingActionButton(

        //     elevation: 0,
        //     backgroundColor: indexNav == 2 ? mainColor : placeholderColor,
        //     onPressed: () {
        //       setState(() {
        //         indexNav = 2;
        //       });
        //     },
        //     child: Image.asset(
        //       'assets/icons/home.png',
        //     )),
      );
    });
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var y = size.height;
    var x = size.width;
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(x * .30, 0);
    path.quadraticBezierTo(x * .35, 0, x * .36, 20);

    path.arcToPoint(Offset(x * .64, 20),
        radius: Radius.circular(5.r), clockwise: false);
    path.quadraticBezierTo(x * .65, 0, x * .70, 0);

    path.lineTo(x, 0);
    path.lineTo(x, y);
    path.lineTo(0, y);
    path.close();
    // path.lineTo(x * .35, 0);
    // path.quadraticBezierTo(.4 * x, 0, x * .4, y * .3);
    // //path.quadraticBezierTo(x * .5, y + y / 4, x * .62, y * .3);
    // path.arcToPoint(
    //   Offset(x * .62, y * .08),
    //   radius: Radius.circular(4),
    //   clockwise: false,
    // );
    // path.quadraticBezierTo(.62 * x, 0, x * .7, 0);
    // //path.quadraticBezierTo(.65 * x, y * .7, x * .65, 0);
    // // path.quadraticBezierTo(x * .36, 0, x * .4, y * .6);
    // // // path.arcToPoint(Offset(x * .63, y / 5),
    // // //     radius: Radius.circular(30), clockwise: false);
    // // path.quadraticBezierTo(x * .5, y, .6 * x, y / 3);
    // // //path.arcTo(rect, startAngle, sweepAngle, forceMoveTo)
    // // path.quadraticBezierTo(x * .6, 0, x, y / 3);
    // path.lineTo(x, 0);
    // path.lineTo(x, y);
    // path.lineTo(0, y);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
// class BNBCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = new Paint()
//       ..color = Colors.white
//       ..style = PaintingStyle.fill;

//     Path path = Path();
//     path.moveTo(0, 0);
//     path.lineTo(size.width * .30, 0);
//     path.quadraticBezierTo(size.width * .35, 0, size.width * .36, 20);

//     path.arcToPoint(Offset(size.width * .64, 20),
//         radius: Radius.circular(52), clockwise: false);
//     path.quadraticBezierTo(size.width * .65, 0, size.width * .70, 0);

//     path.lineTo(size.width, 0);
//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.close();
//     canvas.drawShadow(path, COLOR_BLACK, 60, true);
//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }