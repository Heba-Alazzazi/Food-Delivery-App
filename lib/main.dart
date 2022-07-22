import 'package:flutter/material.dart';
import 'package:meal_monkey/UI/Screens/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      theme: ThemeData(fontFamily: 'Metropolis'),
      debugShowCheckedModeBanner: false,
      home: const Splash(),
    );
  }
}
