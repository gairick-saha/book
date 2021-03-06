import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailBookScreen extends StatelessWidget {
  const DetailBookScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/arrow_left.svg',
            height: 12.0,
            width: 16.0,
          ),
          onPressed: () {
            print('appbar back button');
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        // color: Colors.red,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: SvgPicture.asset('assets/icons/heart.svg'),
                  onPressed: () {
                    print('love button');
                  },
                ),
                Container(
                  width: 129.800048828125,
                  height: 177,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: const Color(0xff838589),
                  ),
                ),
                IconButton(
                  icon: SvgPicture.asset('assets/icons/share.svg'),
                  onPressed: () {
                    print('share button');
                  },
                ),
              ],
            ),
            SizedBox(
              height: 14.0,
            ),
            Text(
              "The Camp (Chateau Book 2)",
              style: const TextStyle(
                  color: const Color(0xff070427),
                  fontWeight: FontWeight.w600,
                  fontFamily: "Montserrat",
                  fontStyle: FontStyle.normal,
                  fontSize: 23.0),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "By John Wishes",
              style: const TextStyle(
                  color: const Color(0xffb0b6c3),
                  fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat",
                  fontStyle: FontStyle.normal,
                  fontSize: 16.0),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 19.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Rating",
                      style: const TextStyle(
                          color: const Color(0xffb0b6c3),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 10.0),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "5.0",
                      style: const TextStyle(
                          color: const Color(0xff070427),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 11.0),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Pages",
                      style: const TextStyle(
                          color: const Color(0xffb0b6c3),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 10.0),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "220",
                      style: const TextStyle(
                          color: const Color(0xff070427),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 11.0),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Time",
                      style: const TextStyle(
                          color: const Color(0xffb0b6c3),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 10.0),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "  5.73",
                      style: const TextStyle(
                          color: const Color(0xff070427),
                          fontWeight: FontWeight.w700,
                          fontFamily: "Montserrat",
                          fontStyle: FontStyle.normal,
                          fontSize: 11.0),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              width: 375,
              height: 351,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: const Color(0xffeae7e7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
