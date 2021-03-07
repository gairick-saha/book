import 'package:book/ui/widgets/custom_sliver_appbar.dart';
import 'package:flutter/material.dart';

class EpisodesResumeScreen extends StatelessWidget {
  const EpisodesResumeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: CustomSliverAppBarDelegate(expandedHeight: height * 0.28),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xfff4f4f4),
              ),
              height: height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: height * 0.2,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: width * 0.05,
                    ),
                    height: height * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      color: const Color(0xffffffff),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Infor",
                          style: TextStyle(
                            color: Color(0xffc5c9dd),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat",
                            fontSize: width * 0.05,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: width * 0.004,
                          height: height * 0.07,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Color(0xfff3f5fa),
                            ),
                          ),
                        ),
                        Text(
                          "Episodes",
                          style: TextStyle(
                            color: Color(0xffb1adb0),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat",
                            fontSize: width * 0.05,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          width: width * 0.004,
                          height: height * 0.07,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Color(0xfff3f5fa),
                            ),
                          ),
                        ),
                        Text(
                          "Review",
                          style: TextStyle(
                            color: Color(0xffc5c9dd),
                            fontWeight: FontWeight.w500,
                            fontFamily: "Montserrat",
                            fontSize: width * 0.05,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
