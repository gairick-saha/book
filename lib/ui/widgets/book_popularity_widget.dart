import 'package:book/ui/widgets/divider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookPopularityWidget extends StatelessWidget {
  final String leftText;
  final String middleText;
  final String rightText;

  const BookPopularityWidget({
    @required this.leftText,
    @required this.middleText,
    @required this.rightText,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          this.leftText,
          style: TextStyle(
            color: Color(0xff8f9bb3),
            fontWeight: FontWeight.w500,
            fontFamily: "Montserrat",
            fontSize: width * 0.035,
          ),
          textAlign: TextAlign.left,
        ),
        CustomDivider(
          width: width * 0.055,
          height: height * 0.005,
          shape: BoxShape.circle,
          color: Color(0xffe4e9f2),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: width * 0.02,
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
                fontStyle: FontStyle.normal,
                fontSize: width * 0.035,
              ),
              textAlign: TextAlign.left,
            )
          ],
        ),
        CustomDivider(
          width: width * 0.055,
          height: height * 0.005,
          shape: BoxShape.circle,
          color: Color(0xffe4e9f2),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: width * 0.02,
              ),
              child: SvgPicture.asset(
                'assets/icons/download.svg',
                width: width * 0.035,
                color: Color(0xffb0b6c3),
              ),
            ),
            Text(
              this.rightText,
              style: TextStyle(
                color: Color(0xff8f9bb3),
                fontWeight: FontWeight.w500,
                fontFamily: "Montserrat",
                fontStyle: FontStyle.normal,
                fontSize: width * 0.035,
              ),
              textAlign: TextAlign.left,
            )
          ],
        ),
      ],
    );
  }
}
