import 'package:get/get.dart';

class BookController extends GetxController {
  double _initialRating = 0;
  double _totalRating = 4;

  double get initialRating => _initialRating;
  double get totalRating => _totalRating;

  void updateRating(value) {
    _totalRating = value;
    update();
  }
}
