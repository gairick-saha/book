import 'package:flutter/material.dart';

class DetailBookScreen extends StatelessWidget {
  const DetailBookScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Text('Detail Book'),
      ),
    );
  }
}
