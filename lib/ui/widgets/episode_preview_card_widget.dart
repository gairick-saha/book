import 'package:book/ui/screens/episode_screen.dart';
import 'package:book/ui/widgets/book_popularity_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EpisodePreviewCardWidget extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const EpisodePreviewCardWidget({
    @required this.screenHeight,
    @required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          // print('Preview');
          Get.to(() => EpisodeScreen());
        },
        child: Container(
          width: this.screenWidth * 0.9,
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
                  width: this.screenWidth * 0.15,
                  height: this.screenHeight * 0.075,
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
                  width: this.screenWidth * 0.03,
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
                        left: this.screenWidth * 0.03,
                        top: this.screenHeight * 0.01,
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
  }
}
