import 'package:book/ui/screens/episodes_resume_screen.dart';
import 'package:book/ui/widgets/backButton_widget.dart';
import 'package:book/ui/widgets/book_cover_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DetailBookScreen extends StatelessWidget {
  DetailBookScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.topLeft,
        children: [
          Positioned(
            top: height * 0.03,
            left: width * 0.02,
            child: BackButtonWidget(
              route: EpisodesResumeScreen(),
            ),
          ),
          Positioned(
            top: height * 0.062,
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/heart.svg',
                        height: height * 0.045,
                      ),
                      onPressed: () {
                        print('love button');
                      },
                    ),
                    BookCover(
                      width: width * 0.375,
                      height: height * 0.26,
                      cornerRadius: 10.0,
                    ),
                    IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/share.svg',
                        color: Color(0xffb0b6c3),
                        height: height * 0.045,
                      ),
                      onPressed: () {
                        print('share button');
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                Text(
                  "The Camp (Chateau Book 2)",
                  style: TextStyle(
                    color: Color(0xff070427),
                    fontWeight: FontWeight.w600,
                    fontFamily: "Montserrat",
                    fontStyle: FontStyle.normal,
                    fontSize: width * 0.055,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                Text(
                  "By John Wishes",
                  style: TextStyle(
                    color: Color(0xffb0b6c3),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Montserrat",
                    fontStyle: FontStyle.normal,
                    fontSize: width * 0.04,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: height * 0.033,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Rating",
                          style: TextStyle(
                            color: Color(0xffb0b6c3),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat",
                            fontSize: width * 0.03,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          "5.0",
                          style: TextStyle(
                            color: Color(0xff070427),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                            fontSize: width * 0.025,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Pages",
                          style: TextStyle(
                            color: Color(0xffb0b6c3),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat",
                            fontSize: width * 0.03,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          "220",
                          style: TextStyle(
                            color: Color(0xff070427),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                            fontSize: width * 0.025,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Time",
                          style: TextStyle(
                            color: Color(0xffb0b6c3),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat",
                            fontSize: width * 0.03,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: height * 0.01,
                        ),
                        Text(
                          "5.73",
                          style: TextStyle(
                            color: Color(0xff070427),
                            fontWeight: FontWeight.w700,
                            fontFamily: "Montserrat",
                            fontStyle: FontStyle.normal,
                            fontSize: width * 0.025,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: height * 0.55,
            right: width * 0.055,
            left: width * 0.055,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Color(0xffeae7e7),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Summery",
                    style: TextStyle(
                      color: Color(0xff121212),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Montserrat",
                      fontSize: width * 0.07,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    '''A New York Times and USA Today Bestselling\nAuthor, \nPenelope Sky is known for her dark romance that \n\nmakes you fall for her characters....no matter how\ndark\nthey seem. Her books are being translated into\nseveral\nlanguages around the world, and she's sold more\nthan ''',
                    style: TextStyle(
                      color: Color(0xff838486),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Montserrat",
                      fontStyle: FontStyle.normal,
                      fontSize: width * 0.032,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: height * 0.53,
            left: 0,
            right: 0,
            child: ButtonBar(
              buttonPadding: EdgeInsets.only(
                top: 0,
                bottom: 0,
                left: width * 0.01,
              ),
              buttonMinWidth: width * 0.32,
              buttonHeight: height * 0.065,
              alignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  elevation: 0,
                  color: Color(0xff0c0d34),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    "BUY NOW",
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Montserrat",
                      fontSize: width * 0.04,
                    ),
                  ),
                  onPressed: () {
                    print('BUY NOW');
                  },
                ),
                MaterialButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  elevation: 0,
                  color: Color(0xff0c0d34),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Bookmark",
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Montserrat",
                      fontSize: width * 0.04,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {
                    print('BOOKMARK');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
