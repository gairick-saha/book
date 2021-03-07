import 'package:book/controller/epub_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookCover extends GetWidget<EpubController> {
  final cornerRadius;
  final width;
  final height;
  BookCover(
      {Key key,
      @required this.cornerRadius,
      @required this.width,
      @required this.height})
      : super(key: key);

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
          color: Color(0xff838589),
        ),
      ),
    );
  }
}
