import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/constant.dart';

class PaymentMethode extends StatefulWidget {
  PaymentMethode(
      {Key? key, required this.titleWidget, required this.valueRadio})
      : super(key: key);
  Widget titleWidget;
  Payment valueRadio;

  @override
  State<PaymentMethode> createState() => _PaymentMethodeState();
}

class _PaymentMethodeState extends State<PaymentMethode> {
  Payment groupValue = Payment.gmail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 21.w),
      child: Card(
        color: Color(0xffF6F6F6),
        child: ListTile(
          title: widget.titleWidget,
          trailing: Radio(
              //toggleable: true,
              value: widget.valueRadio,
              groupValue: groupValue,
              onChanged: (value) {
                setState(() {
                  groupValue = value as Payment;
                });
              }),
        ),
      ),
    );
  }
}
