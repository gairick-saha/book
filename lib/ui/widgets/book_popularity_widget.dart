import 'package:book/ui/widgets/divider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookPopularityWidget extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String leftText;
  final String middleText;
  final String rightText;

  const BookPopularityWidget({
    @required this.leftText,
    @required this.middleText,
    @required this.rightText,
    @required this.screenHeight,
    @required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          this.leftText,
          style: TextStyle(
            color: Color(0xff8f9bb3),
            fontWeight: FontWeight.w500,
            fontFamily: "Montserrat",
            fontSize: screenWidth * 0.035,
          ),
          textAlign: TextAlign.left,
        ),
        CustomDivider(
          screenWidth: screenWidth * 0.055,
          screenHeight: screenHeight * 0.005,
          shape: BoxShape.circle,
          color: Color(0xffe4e9f2),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: screenWidth * 0.02,
              ),
              child: SvgPicture.asset(
                'assets/icons/save.svg',
                color: Color(0xffb0b6c3),
              ),
            ),
            Text(
              this.middleText,
              style: TextStyle(
                color: Color(0xff8f9bb3),
                fontWeight: FontWeight.w500,
                fontFamily: "Montserrat",
                fontSize: screenWidth * 0.035,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
        CustomDivider(
          screenWidth: screenWidth * 0.055,
          screenHeight: screenHeight * 0.005,
          shape: BoxShape.circle,
          color: Color(0xffe4e9f2),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: screenWidth * 0.02,
              ),
              child: SvgPicture.asset(
                'assets/icons/download.svg',
                width: screenWidth * 0.035,
                color: Color(0xffb0b6c3),
              ),
            ),
            Text(
              this.rightText,
              style: TextStyle(
                color: Color(0xff8f9bb3),
                fontWeight: FontWeight.w500,
                fontFamily: "Montserrat",
                fontSize: screenWidth * 0.035,
              ),
              textAlign: TextAlign.left,
            )
          ],
        ),
      ],
    );
  }
}
