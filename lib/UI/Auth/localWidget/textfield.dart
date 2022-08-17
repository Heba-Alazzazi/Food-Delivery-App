// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constant.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    Key? key,
    required this.hintText,
    this.controller = null,
    this.formatter,
    this.password,
    this.isEmail = false,
    this.isConfirm = false,
    this.isObscure = false,
    this.isBottomSheet = false,
  }) : super(key: key);
  String hintText;
  String? password = '';
  bool isEmail = false;
  bool isConfirm = false;
  bool isObscure = false;
  bool isBottomSheet;
  TextEditingController? controller;
  List<TextInputFormatter>? formatter = [];

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.isBottomSheet
          ? EdgeInsets.only(left: 0, right: 0, bottom: 0)
          : EdgeInsets.only(left: 34, right: 34, bottom: 30),
      child: TextFormField(
        obscuringCharacter: '*',
        obscureText: widget.isObscure,
        inputFormatters: widget.formatter,
        validator: ((String? value) {
          RegExp regex = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
          if (value!.isEmpty) {
            return 'This is required';
          } else if (widget.isConfirm &&
              widget.password != widget.controller?.text) {
            return 'The pasword not matched';
          } else if (widget.isEmail && !regex.hasMatch(value)) {
            return 'Enter email as example@gmail.com format ';
          } else {}
        }),
        controller: widget.controller,
        decoration: InputDecoration(
            focusedErrorBorder: outlineInputBorder,
            errorStyle:
                const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            errorBorder: outlineInputBorder,
            disabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            contentPadding:
                const EdgeInsets.only(left: 37, top: 20, bottom: 20),
            hintText: widget.hintText,
            border: InputBorder.none,
            fillColor: fillColor,
            filled: true,
            hintStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: placeholderColor)),
      ),
    );
  }
}
