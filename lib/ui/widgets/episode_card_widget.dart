import 'package:book/ui/widgets/book_popularity_widget.dart';
import 'package:flutter/material.dart';

class EpisodeCardWidget extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final int episodeIndex;
  final String episodeTitle;
  final Duration episodeDuration;

  const EpisodeCardWidget({
    @required this.screenHeight,
    @required this.screenWidth,
    @required this.episodeIndex,
    @required this.episodeTitle,
    @required this.episodeDuration,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          print('List Item : ${this.episodeIndex}');
          print('List Item : ${this.episodeDuration}');
        },
        child: Container(
          width: this.screenWidth * 0.9,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
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
                      "Ep ${this.episodeIndex}: ${this.episodeTitle}",
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
                    "${(this.episodeDuration).toString().split('.').first.padLeft(8, "0")}",
                    // "1:30:25",
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
