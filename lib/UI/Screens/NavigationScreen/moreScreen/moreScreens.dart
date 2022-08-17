import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meal_monkey/provider/myProvider.dart';
import 'package:provider/provider.dart';

import '../../../../constant.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final value = Provider.of<MyProvider>(context);
    //return value.moreScreen[value.indexMore];
    return Container(
      child: Consumer<MyProvider>(builder: (context, value, child) {
        return moreScreens[value.indexMore];
      }),
    );
  }
}
