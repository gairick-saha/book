import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final double width;
  final double height;
  final BoxShape shape;
  final Color color;

  const CustomDivider({
    @required this.width,
    @required this.height,
    @required this.shape,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this.width,
      height: this.height,
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
