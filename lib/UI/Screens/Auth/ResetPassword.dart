// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:meal_monkey/Global_Widget/button.dart';
import 'package:meal_monkey/UI/Screens/Auth/CodeVerfication.dart';
import 'package:meal_monkey/UI/Screens/Auth/localWidget/subtitle.dart';
import 'package:meal_monkey/UI/Screens/Auth/localWidget/textfield.dart';
import 'package:meal_monkey/UI/Screens/Auth/localWidget/title.dart';
import 'package:meal_monkey/UI/Screens/widget/visibility.dart';
import 'package:meal_monkey/constant.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  var formKeyReset = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  bool invalid = false;
  @override
  Widget build(BuildContext context) {
    resetpassword() {
      if (formKeyReset.currentState!.validate()) {
        print('the form is save');
        formKeyReset.currentState!.save();
        for (int i = 0; i < users.length; ++i) {
          if (emailController.text == users[i].email) {
            setState(() {
              invalid = false;
            });
            Navigator.push(context,
                goTo(CodeVerfication(userInex: i)));
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

    return Scaffold(
      backgroundColor: white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TitleText(text: 'Reset Password'),
          SubTitle(
              text:
                  'Please enter your email to receive a\n link to  create a new password via email'),
          const SizedBox(
            height: 40,
          ),
          Form(
              key: formKeyReset,
              child: CustomTextField(
                hintText: 'Email',
                isEmail: true,
                controller: emailController,
              )),
          Visibility_(invalid: invalid),
          Button(
              function: () {
                resetpassword();
              },
              nameButtom: 'Send')
        ],
      ),
    );
  }
}
