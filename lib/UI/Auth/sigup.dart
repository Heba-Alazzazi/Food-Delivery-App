// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables, avoid_print

import 'package:flutter/material.dart';
import 'package:meal_monkey/Global_Widget/button.dart';
import 'package:meal_monkey/Model/User.dart';
import '../../globalVar.dart';
import 'localWidget/customRowText.dart';
import 'localWidget/subtitle.dart';
import 'localWidget/textfield.dart';
import 'localWidget/title.dart';
import 'package:meal_monkey/constant.dart';

import 'login.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  var formKeySignup = GlobalKey<FormState>();
  // final TextEditingController emailController = TextEditingController();
  // final TextEditingController passwordController = TextEditingController();
  // final TextEditingController nameController = TextEditingController();
  // final TextEditingController mobileNoController = TextEditingController();
  // final TextEditingController addresController = TextEditingController();
  // final TextEditingController confirmpasswordController =
  //     TextEditingController();
  var size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    signup() {
      if (formKeySignup.currentState!.validate() &&
          passwordController.text == confirmpasswordController.text) {
        print('the form is save');
        formKeySignup.currentState!.save();
        users.add(User(
            name: nameController.text,
            email: emailController.text,
            mobileNo: mobileNoController.text,
            address: addresController.text,
            password: passwordController.text));
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => Login())));
      } else {
        print('the form is not save');
      }
    }

    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TitleText(text: 'Sign Up'),
            SubTitle(text: 'Add your details to sign up'),
            Form(
                autovalidateMode: AutovalidateMode.always,
                key: formKeySignup,
                child: Column(
                  children: [
                    CustomTextField(
                      hintText: 'Name',
                      controller: nameController,
                    ),
                    CustomTextField(
                      hintText: 'Email',
                      controller: emailController,
                      isEmail: true,
                      //formatter: emailFormatter,
                    ),
                    CustomTextField(
                      hintText: 'Mobile No',
                      controller: mobileNoController,
                    ),
                    CustomTextField(
                      hintText: 'Address',
                      controller: addresController,
                    ),
                    CustomTextField(
                      hintText: 'Password',
                      controller: passwordController,
                      formatter: passwordFormatter,
                      isObscure: true,
                    ),
                    CustomTextField(
                      hintText: 'Confirm Password',
                      controller: confirmpasswordController,
                      formatter: passwordFormatter,
                      //to match between two text field for password
                      password: passwordController.text,
                      isConfirm: true,
                      isObscure: true,
                    ),
                  ],
                )),
            Button(
                function: () {
                  signup();
                },
                nameButtom: 'Sign Up'),
            Padding(
              padding: EdgeInsets.only(bottom: size.height - size.height * .99),
              child: CustomRishText(
                  part1: 'Already have an Account?',
                  part2: 'Login',
                  function: () {
                    Navigator.push(context, goTo(Login()));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
