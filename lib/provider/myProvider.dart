import 'package:flutter/cupertino.dart';
import 'package:meal_monkey/UI/Screens/NavigationScreen/moreScreen/payment.dart';
import 'package:meal_monkey/UI/Screens/NavigationScreen/profileBody.dart';

import '../UI/Screens/NavigationScreen/moreScreen/moreScreens.dart';

class MyProvider extends ChangeNotifier {
  //int selectedUserIndex = 0;
  int indexMore = 0;
  List<String> titlesMoreScreen = [
    'More',
    'Payment Details',
    'My Orders',
    'Notifications ',
    'Inbos',
    'About Us',
    'CheckOut',
  ];
  // void addUser() {
  //   notifyListeners();
  // }

  void changeProfileIndex(int index) {
    print(indexMore);
    indexMore = index;
    print(indexMore);
    notifyListeners();
  }

  void backMoreScreen() {
    if (indexMore == 6) {
      indexMore = 2;
    } else {
      indexMore = 0;
    }
    notifyListeners();
  }
  // void loginUser() {
  //   notifyListeners();
  // }
}
