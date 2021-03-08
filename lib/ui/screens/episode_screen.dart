import 'package:book/ui/screens/episodes_resume_screen.dart';
import 'package:book/ui/widgets/backButton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EpisodeScreen extends StatelessWidget {
  const EpisodeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xfff4f4f4),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        margin: EdgeInsets.symmetric(
          horizontal: width * 0.04,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            AppBar(
              leading: BackButtonWidget(
                route: EpisodesResumeScreen(),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
              actions: [
                IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: SvgPicture.asset(
                    'assets/icons/letter_A.svg',
                    width: width * 0.03,
                    height: height * 0.15,
                  ),
                  onPressed: () {
                    print('Font Size');
                  },
                ),
                IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    print('Search');
                  },
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    "Devine:\nWalk to the city",
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      fontSize: width * 0.06,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  // SizedBox(height: height * 0.05),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * 0.05,
                        vertical: height * 0.02,
                      ),
                      // color: Colors.red,
                      child: Text(
                        '''Sit aliqua dolor do amet sintelit officia cons\nquat duis enim velit mollit xercitation onevs\nniam consequat sunt nostrud ametmetm it\n\nsit aliqua dolor do amet sintelit officia cons\nquat duis enim velit mollit xercitation nenu’s\nveniam consequat sunt nostrud amet inima\nquat duis enim velit mollit xercitation\nnenu\nveniam consequat sunt nostrud, \nconsequat\nsunt nostrud amet inima mollit non''',
                        softWrap: true,
                        style: TextStyle(
                          color: Color(0xff888888),
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                          fontStyle: FontStyle.normal,
                          fontSize: width * 0.04,
                          // wordSpacing: width * 0.002,
                          letterSpacing: width * 0.002,
                          height: height * 0.0023,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
