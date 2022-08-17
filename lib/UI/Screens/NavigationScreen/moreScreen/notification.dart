import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meal_monkey/Global_Widget/notification_and_inbox_Box.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Notification_Inbox_Box(
              title: 'Your orders has been picked up',
              subTitle: 'Now',
            ),
            Notification_Inbox_Box(
              title: 'Your order has been delivered',
              isRead: true,
              subTitle: '1 hour ago',
            ),
            Notification_Inbox_Box(
              title: 'Your orders has been picked up',
              subTitle: 'Now',
            ),
            Notification_Inbox_Box(
              title: 'Your order has been delivered',
              isRead: true,
              subTitle: '1 hour ago',
            ),
            Notification_Inbox_Box(
              title: 'Your orders has been picked up',
              subTitle: 'Now',
            ),
            Notification_Inbox_Box(
              title: 'Your order has been delivered',
              isRead: true,
              subTitle: '1 hour ago',
            ),
          ],
        ),
      ),
    );
  }
}
