import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/UI/Screens/SplashScreen.dart';
import 'package:meal_monkey/UI/Screens/home.dart';
import 'package:meal_monkey/constant.dart';
import 'package:meal_monkey/provider/myProvider.dart';
import 'package:provider/provider.dart';
//import 'dart:html';

void main() {
  runApp(ChangeNotifierProvider(
    create: ((context) => MyProvider()),
    builder: (context, child) {
      return MyApp();
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: ((context, child) {
        return MaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: white,
            fontFamily: 'Metropolis',
            // ignore: prefer_const_constructors
            textTheme: TextTheme(),
          ),
          debugShowCheckedModeBanner: false,
          home: Home(),
        );
      }),
    );
  }
}
