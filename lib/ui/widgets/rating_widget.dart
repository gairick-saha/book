import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RatingWidget extends StatefulWidget {
  const RatingWidget({Key key}) : super(key: key);

  @override
  _RatingWidgetState createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  double initialRating = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      // color: Colors.red,
      width: width * 0.28,
      height: height * 0.05,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, rating) {
          return SvgPicture.asset(
            'assets/icons/empty_star.svg',
            width: width * 0.03,
            // color: Color(0xff8f9bb3),
            color: Color(0xffff9d2b),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: width * 0.02,
          );
        },
      ),
    );
  }
}
