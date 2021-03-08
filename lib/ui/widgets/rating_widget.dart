import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RatingWidget extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const RatingWidget({
    @required this.screenHeight,
    @required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.screenWidth * 0.28,
      height: this.screenHeight * 0.05,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, rating) {
          return SvgPicture.asset(
            'assets/icons/empty_star.svg',
            width: screenWidth * 0.03,
            // color: Color(0xff8f9bb3),
            color: Color(0xffff9d2b),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: screenWidth * 0.02,
          );
        },
      ),
    );
  }
}
