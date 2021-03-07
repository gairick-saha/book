import 'package:book/ui/screens/detail_book_screen.dart';
import 'package:book/ui/widgets/backButton_widget.dart';
import 'package:book/ui/widgets/book_cover_widget.dart';
import 'package:book/ui/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  const CustomSliverAppBarDelegate({
    @required this.expandedHeight,
  });

  double appear(double shrinkOffset) => shrinkOffset / expandedHeight;

  double disappear(double shrinkOffset) => 1 - shrinkOffset / expandedHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final size = height * 0.02;
    final top = expandedHeight - shrinkOffset - size * 8.5;
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.none,
      children: [
        AppBar(
          elevation: 0,
          leading: BackButtonWidget(
            route: DetailBookScreen(),
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
          backgroundColor: Colors.white,
          title: Opacity(
            opacity: appear(shrinkOffset),
            child: Text(
              "Desvendando Princesas",
              style: TextStyle(
                color: Color(0xff222b45),
                fontWeight: FontWeight.w400,
                fontFamily: "Montserrat",
              ),
            ),
          ),
        ),
        Positioned(
          top: top,
          left: width * 0.034,
          child: Opacity(
            opacity: disappear(shrinkOffset),
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
                width: width * 0.35,
                height: height * 0.3,
              ),
            ),
          ),
        ),
        Positioned(
          top: top + height * 0.02,
          left: width * 0.44,
          child: Opacity(
            opacity: disappear(shrinkOffset),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  height: height * 0.04,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "14.1k",
                      style: TextStyle(
                        color: Color(0xff8f9bb3),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Montserrat",
                        fontSize: width * 0.035,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Container(
                      width: width * 0.1,
                      height: height * 0.007,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffe4e9f2),
                      ),
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
                          "5.6k",
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
                    Container(
                      width: width * 0.1,
                      height: height * 0.007,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffe4e9f2),
                      ),
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
                          "5.6k",
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
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
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
                        fontSize: width * 0.05,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.005,
                ),
                RatingWidget(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight + 20;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
