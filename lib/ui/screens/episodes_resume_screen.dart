import 'package:book/ui/screens/detail_book_screen.dart';
import 'package:book/ui/screens/episode_screen.dart';
import 'package:book/ui/widgets/backButton_widget.dart';
import 'package:book/ui/widgets/book_cover_widget.dart';
import 'package:book/ui/widgets/book_popularity_widget.dart';
import 'package:book/ui/widgets/divider_widget.dart';
import 'package:book/ui/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class EpisodesResumeScreen extends StatelessWidget {
  const EpisodesResumeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height * 0.05,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButtonWidget(
          route: DetailBookScreen(),
          icon: SvgPicture.asset(
            'assets/icons/arrow_left.svg',
            height: 12.0,
            width: 16.0,
          ),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/download.svg',
              color: Color(0xffb0b6c3),
            ),
            onPressed: () {
              print('download');
            },
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/three-dots.svg',
              color: Color(0xffb0b6c3),
            ),
            onPressed: () {
              print('download');
            },
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool isScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.transparent,
              collapsedHeight: height * 0.16,
              expandedHeight: height * 0.16,
              flexibleSpace: Stack(
                fit: StackFit.expand,
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: height * 0.03,
                    left: width * 0.36,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Desvendando\nPrincesas",
                          style: TextStyle(
                            color: Color(0xff222b45),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat",
                            fontSize: width * 0.06,
                            height: height * 0.0016,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: width * 0.043,
                          ),
                          child: BookPopularityWidget(
                            leftText: '14.1k',
                            middleText: '5.6k',
                            rightText: '3.9k',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: height * 0.17,
                    left: width * 0.38,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  scale: 1,
                                  fit: BoxFit.contain,
                                  image: AssetImage(
                                    'assets/images/logo.png',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.02,
                            ),
                            Text(
                              "Flower Books",
                              style: TextStyle(
                                color: Color(0xff222b45),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Montserrat",
                                fontStyle: FontStyle.normal,
                                fontSize: width * 0.04,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        RatingWidget(),
                      ],
                    ),
                  ),
                  Positioned(
                    top: height * 0.02,
                    left: width * 0.034,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: width * 0.01,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffd6e1db),
                            offset: Offset(0, 5),
                            blurRadius: 10.0,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: BookCover(
                        cornerRadius: 0.0,
                        width: width * 0.3,
                        height: height * 0.245,
                        colour: Color(0xffbec2ce),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverPersistentHeader(
              floating: true,
              pinned: true,
              delegate: CustomSliverAppBar(
                screenWidth: width,
                screenHeight: height,
                minheight: height * 0.065,
                expandedHeight: height * 0.212,
              ),
            )
          ];
        },
        body: Container(
          padding: EdgeInsets.only(
            top: height * 0.035,
            bottom: height * 0.11,
          ),
          decoration: BoxDecoration(
            color: Color(0xfff4f4f4),
          ),
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: ((BuildContext context, int index) {
              if (index == 0) {
                return Center(
                  child: InkWell(
                    onTap: () {
                      // print('Preview');
                      Get.to(() => EpisodeScreen());
                    },
                    child: Container(
                      width: width * 0.9,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.15,
                              height: height * 0.075,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Color(0xffbec2ce),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Preview",
                                  style: const TextStyle(
                                    color: const Color(0xff222b45),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Montserrat",
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: width * 0.03,
                                    top: height * 0.01,
                                  ),
                                  child: BookPopularityWidget(
                                    leftText: '14.1k',
                                    middleText: '5.6k',
                                    rightText: '3.9k',
                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            Opacity(
                              opacity: 0.5982142686843872,
                              child: Text(
                                "2:14",
                                style: const TextStyle(
                                  color: const Color(0xff222b45),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Montserrat",
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                return Center(
                  child: InkWell(
                    onTap: () {
                      print('List Item : $index');
                    },
                    child: Container(
                      width: width * 0.9,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: width * 0.15,
                              height: height * 0.075,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Color(0xffbec2ce),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: width * 0.03,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Ep $index: Destiny",
                                  style: const TextStyle(
                                    color: const Color(0xff222b45),
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Montserrat",
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: width * 0.03,
                                    top: height * 0.01,
                                  ),
                                  child: BookPopularityWidget(
                                    leftText: '14.1k',
                                    middleText: '5.6k',
                                    rightText: '3.9k',
                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            Opacity(
                              opacity: 0.5982142686843872,
                              child: Text(
                                "30:25",
                                style: const TextStyle(
                                  color: const Color(0xff222b45),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Montserrat",
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }
            }),
            separatorBuilder: (BuildContext context, _) => CustomDivider(
              width: width * 0.9,
              height: height * 0.001,
              shape: BoxShape.rectangle,
              color: Color(0xfff4f4f4),
            ),
          ),
        ),
      ),
      bottomSheet: _bottomSheet(context, width, height),
    );
  }
}

class CustomSliverAppBar extends SliverPersistentHeaderDelegate {
  final double screenWidth;
  final double screenHeight;
  final double minheight;
  final double expandedHeight;

  CustomSliverAppBar({
    @required this.minheight,
    @required this.expandedHeight,
    @required this.screenWidth,
    @required this.screenHeight,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xfff4f4f4),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
                color: Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffe5e8ed),
                    offset: Offset(0, 5),
                    blurRadius: 10,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: _navButton(
                context,
                screenWidth,
                screenHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => minheight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

Widget _navButton(
    BuildContext context, double screenWidth, double screenHeight) {
  return Row(
    children: [
      Flexible(
        child: InkWell(
          onTap: () {
            print('Info');
          },
          child: Container(
            height: screenHeight * 0.055,
            alignment: Alignment.center,
            child: Text(
              "Info",
              style: TextStyle(
                color: Color(0xffc5c9dd),
                fontWeight: FontWeight.w600,
                fontFamily: "Montserrat",
                fontSize: screenWidth * 0.04,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      CustomDivider(
        width: screenWidth * 0.004,
        height: screenHeight * 0.055,
        shape: BoxShape.rectangle,
        color: Color(0xfff3f5fa),
      ),
      Flexible(
        child: InkWell(
          onTap: () {
            print('Episodes');
          },
          child: Container(
            height: screenHeight * 0.055,
            alignment: Alignment.center,
            child: Text(
              "Episodes",
              style: TextStyle(
                color: Color(0xffb1adb0),
                fontWeight: FontWeight.w600,
                fontFamily: "Montserrat",
                fontSize: screenWidth * 0.04,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
      CustomDivider(
        width: screenWidth * 0.004,
        height: screenHeight * 0.055,
        shape: BoxShape.rectangle,
        color: Color(0xfff3f5fa),
      ),
      Flexible(
        child: InkWell(
          onTap: () {
            print('Review');
          },
          child: Container(
            height: screenHeight * 0.055,
            alignment: Alignment.center,
            child: Text(
              "Review",
              style: TextStyle(
                color: Color(0xffc5c9dd),
                fontWeight: FontWeight.w600,
                fontFamily: "Montserrat",
                fontSize: screenWidth * 0.04,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget _bottomSheet(
    BuildContext context, double screenWidth, double screenHeight) {
  return Container(
    height: screenHeight * 0.11,
    width: screenWidth,
    decoration: BoxDecoration(
      color: Color(0xffffffff),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      boxShadow: [
        BoxShadow(
          color: Color(0xffe5e8ed),
          offset: Offset(0, -3),
          blurRadius: 10,
        ),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.only(
        left: screenWidth * 0.06,
        right: screenWidth * 0.06,
        // bottom: screenHeight * 0.03,
      ),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            width: screenWidth * 0.11,
            height: screenHeight * 0.055,
            decoration: BoxDecoration(
              color: Color(0xffd8d8d8),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              border: Border.all(
                color: Color(0xfff4f4f4),
                width: 2,
              ),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.03,
          ),
          Text(
            "Ep 2: Game of the Darkness",
            style: const TextStyle(
              color: const Color(0xff222b45),
              fontWeight: FontWeight.w600,
              fontFamily: "Montserrat",
            ),
            textAlign: TextAlign.left,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/play_button.svg',
              color: Color(0xffb1adb0),
              width: screenWidth * 0.02,
              height: screenHeight * 0.04,
            ),
          ),
        ],
      ),
    ),
  );
}
