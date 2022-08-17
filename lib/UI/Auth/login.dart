// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, avoid_print

import 'package:flutter/material.dart';
import 'package:meal_monkey/Global_Widget/button.dart';
import 'package:meal_monkey/UI/Screens/home.dart';
import 'package:meal_monkey/constant.dart';

import '../../Global_Widget/visibility.dart';
import 'ResetPassword.dart';
import 'localWidget/customRowText.dart';
import 'localWidget/socialButton.dart';
import 'localWidget/subtitle.dart';
import 'localWidget/textfield.dart';
import 'localWidget/title.dart';
import 'sigup.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);
  var size;
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formKeyLogin = GlobalKey<FormState>();
  bool invalid = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  login() {
    if (formKeyLogin.currentState!.validate()) {
      print('the form is save ${users.length}');
      formKeyLogin.currentState!.save();
      for (int i = 0; i < users.length; ++i) {
        print('the number user$i \n the length ${users.length}');
        print(
            'current ENAIl ${emailController.text}>> ${users[i].email}\n current pass ${passwordController.text} >>>${users[i].password}  ');
        // To check the email and password are matched for the same user
        if (emailController.text == users[i].email &&
            passwordController.text == users[i].password) {
          print('the user valid');
          setState(() {
            invalid = false;
          });
          Navigator.push(
              context,
              goTo(Home(userInex: i)));
        } else {
          setState(() {
            print('the user invalid');
            invalid = true;
          });
        }
      }
    } else {
      print('the form is not save');
    }
  }

  @override
  Widget build(BuildContext context) {
    widget.size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleText(text: 'Login'),
              SubTitle(text: 'Add your details to login'),
              Form(
                autovalidateMode: AutovalidateMode.always,
                  key: formKeyLogin,
                  child: Column(
                    children: [
                      CustomTextField(
                        hintText: 'Your Email',
                        controller: emailController,
                        isEmail: true,
                        //formatter: emailFormatter,
                      ),
                      CustomTextField(
                        hintText: 'Password',
                        controller: passwordController,
                        formatter: passwordFormatter,
                        isObscure: true,
                      ),
                    ],
                  )),
              Visibility_(invalid: invalid),
              Button(
                  function: () {
                    login();
                  },
                  nameButtom: 'Login'),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ResetPassword()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: widget.size.height * .05,
                        top: widget.size.height * .03),
                    child: const Text(
                      'Forget your Password?',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: seconderyFontColor),
                    ),
                  )),
              SubTitle(text: 'Or login With'),
              SocialButton(
                  function: () {},
                  nameButtom: 'Login with Facebook',
                  color: const Color(0xff367FC0),
                  image: 'assets/icons/facebook.png'),
              SocialButton(
                  function: () {},
                  nameButtom: 'Login with Google',
                  color: const Color(0xffDD4B39),
                  image: 'assets/icons/google.png'),
              Padding(
                padding: EdgeInsets.only(
                    bottom: widget.size.height - widget.size.height * .99),
                child: CustomRishText(
                  part1: "Don't have an Account?",
                  part2: 'Sign Up',
                  function: () {
                    Navigator.push(context,
                       goTo(SignUp()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
