import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackButtonWidget extends StatelessWidget {
  final Widget route;
  final Widget icon;
  BackButtonWidget({
    @required this.route,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      icon: this.icon,
      onPressed: () {
        Get.offAll(
          () => this.route,
        );
      },
    );
  }
}
