import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meal_monkey/Global_Widget/notification_and_inbox_Box.dart';

class Inbox extends StatelessWidget {
  const Inbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Notification_Inbox_Box(
            title: 'MealMonkey Promotions',
            subTitle: 'Lorem ipsum dolor sit amet, consectetur ',
            isInbox: true,
            isRead: true,
          ),
          Notification_Inbox_Box(
            title: 'MealMonkey Promotions',
            subTitle: 'Lorem ipsum dolor sit amet, consectetur ',
            isInbox: true,
            isRead: false,
          ),
          Notification_Inbox_Box(
            title: 'MealMonkey Promotions',
            subTitle: 'Lorem ipsum dolor sit amet, consectetur ',
            isInbox: true,
            isRead: true,
          ),
          Notification_Inbox_Box(
            title: 'MealMonkey Promotions',
            subTitle: 'Lorem ipsum dolor sit amet, consectetur ',
            isInbox: true,
            isRead: false,
          ),
        ],
      ),
    );
  }
}
