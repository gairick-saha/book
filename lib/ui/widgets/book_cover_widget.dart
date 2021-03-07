import 'package:book/controller/epub_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookCover extends GetWidget<EpubController> {
  final double cornerRadius;
  final double width;
  final double height;
  final Color colour;

  BookCover({
    @required this.cornerRadius,
    @required this.width,
    @required this.height,
    @required this.colour,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.openBook();
      },
      child: Container(
        width: this.width,
        height: this.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(this.cornerRadius),
          ),
          color: this.colour,
        ),
      ),
    );
  }
}
