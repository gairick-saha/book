import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BackButtonWidget extends StatelessWidget {
  final Widget route;
  BackButtonWidget({Key key, @required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(
        'assets/icons/arrow_left.svg',
        height: 12.0,
        width: 16.0,
      ),
      onPressed: () {
        print('appbar back button');
        Get.offAll(() => this.route);
      },
    );
  }
}
