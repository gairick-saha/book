import 'package:flutter/material.dart';
import 'package:book/ui/screens/detail_book_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetailBookScreen(),
    );
  }
}
