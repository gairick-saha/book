import 'package:book/ui/screens/episodes_resume_screen.dart';
import 'package:book/ui/widgets/backButton_widget.dart';
import 'package:flutter/material.dart';

class EpisodeScreen extends StatelessWidget {
  const EpisodeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
                  icon: Icon(
                    Icons.font_download_outlined,
                    color: Colors.black,
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
              child: Center(
                child: Text('Hello World'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
