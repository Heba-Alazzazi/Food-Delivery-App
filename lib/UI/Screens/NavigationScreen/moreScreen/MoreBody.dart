import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meal_monkey/Global_Widget/moreCard.dart';
import 'package:meal_monkey/provider/myProvider.dart';
import 'package:provider/provider.dart';

class MoreBody extends StatelessWidget {
  const MoreBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Consumer<MyProvider>(
      builder: (context, value, child) {
        return Column(
          children: [
            MoreCard(
                icon: 'income', title: 'Payment Detailes', indexScreen: 1,),
            MoreCard(icon: 'shopping-bag', title: 'My Orders', indexScreen: 2,),
            MoreCard(
              icon: 'note',
              title: 'Notification',
              indexScreen: 3,
              isNotification: true,
            ),
            MoreCard(icon: 'inbox-mail', title: 'Inbox', indexScreen: 4),
            MoreCard(icon: 'info', title: 'About', indexScreen: 5),
          ],
        );
      },
    ));
  }
}
