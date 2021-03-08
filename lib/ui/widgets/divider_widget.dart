import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final BoxShape shape;
  final Color color;

  const CustomDivider({
    @required this.screenWidth,
    @required this.screenHeight,
    @required this.shape,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.screenWidth,
      height: this.screenHeight,
      child: DecoratedBox(
        decoration: BoxDecoration(
          // color: Color(0xffe4e9f2),
          color: this.color,
          shape: this.shape,
        ),
      ),
    );
  }
}
