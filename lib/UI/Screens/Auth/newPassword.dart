// ignore_for_file: file_names, must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:meal_monkey/Global_Widget/button.dart';
import 'package:meal_monkey/UI/Screens/Auth/localWidget/subtitle.dart';
import 'package:meal_monkey/UI/Screens/Auth/localWidget/textfield.dart';
import 'package:meal_monkey/UI/Screens/Auth/localWidget/title.dart';
import 'package:meal_monkey/UI/Screens/Auth/login.dart';
import 'package:meal_monkey/constant.dart';

class NewPassword extends StatefulWidget {
  NewPassword({Key? key, required this.userIndex}) : super(key: key);
  int userIndex;

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  var formKeyNew = GlobalKey<FormState>();

  final TextEditingController newpasswordController = TextEditingController();

  final TextEditingController confirmnewpasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    newpassword() {
      print(formKeyNew.currentState!.validate());
      if (formKeyNew.currentState!.validate()) {
        formKeyNew.currentState!.save();
        print('the old${users[widget.userIndex].password}');
        //Set the password
        users[widget.userIndex].setPassword(newpasswordController.text);
        print('the new ${users[widget.userIndex].password}');
        Navigator.push(
            context, MaterialPageRoute(builder: ((context) => Login())));
      } else {
        print('the form is not save');
      }
    }

    return Scaffold(
      backgroundColor: white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TitleText(text: 'New Password'),
          SubTitle(
              text:
                  'Please enter your email to receive a \nlink to  create a new password via email'),
          const SizedBox(
            height: 20,
          ),
          Form(
            key: formKeyNew,
            child: Column(
              children: [
                CustomTextField(
                  hintText: 'New Password',
                  controller: newpasswordController,
                  formatter: passwordFormatter,
                ),
                CustomTextField(
                  hintText: 'Confirm Password',
                  controller: confirmnewpasswordController,
                  formatter: passwordFormatter,
                  //to match between two text field for password
                  password: newpasswordController.text,
                  isConfirm: true,
                ),
              ],
            ),
          ),
          Button(
              function: () {
                newpassword();
              },
              nameButtom: 'Done'),
        ],
      ),
    );
  }
}
