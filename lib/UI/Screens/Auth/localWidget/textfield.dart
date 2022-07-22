// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meal_monkey/constant.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.formatter,
    this.password,
    this.isEmail = false,
    this.isConfirm = false,
  }) : super(key: key);
  String hintText;
  String? password = '';
  bool isEmail = false;
  bool isConfirm = false;
  TextEditingController controller = TextEditingController();
  List<TextInputFormatter>? formatter = [];

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 34, right: 34, bottom: 30),
      child: TextFormField(
        inputFormatters: widget.formatter,

        validator: ((String? value) {
          RegExp regex = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
          if (value!.isEmpty) {
            return 'This is required';
          } else if (widget.isConfirm &&
              widget.password != widget.controller.text) {
            return 'The pasword not matched';
          } else if (widget.isEmail && !regex.hasMatch(value)) {
            return 'Enter email as example@gmail.com format ';
          } else {
            return null;
          }
        }),
        controller: widget.controller,
        decoration: InputDecoration(
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: borderCircle, borderSide: BorderSide.none),
            errorStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
            errorBorder: OutlineInputBorder(
                borderRadius: borderCircle, borderSide: BorderSide.none),
            disabledBorder: OutlineInputBorder(borderRadius: borderCircle),
            focusedBorder: OutlineInputBorder(
                borderRadius: borderCircle, borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(
                borderRadius: borderCircle, borderSide: BorderSide.none),
            contentPadding:
                const EdgeInsets.only(left: 37, top: 20, bottom: 20),
            hintText: widget.hintText,
            border: InputBorder.none,
            fillColor: fillColor,
            filled: true,
            hintStyle: const TextStyle(
                fontSize: 14,
                fontFamily: 'Regular.otf',
                color: placeholderColor)),
      ),
    );
  }
}
