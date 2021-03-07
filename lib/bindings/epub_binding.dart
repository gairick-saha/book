import 'package:book/controller/epub_controller.dart';
import 'package:get/get.dart';

class EpubBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EpubController>(() => EpubController());
  }
}
