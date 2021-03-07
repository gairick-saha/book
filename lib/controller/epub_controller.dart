import 'package:epub_viewer/epub_viewer.dart';
import 'package:get/get.dart';

class EpubController extends GetxController {
  @override
  void onInit() {
    EpubViewer.setConfig(
      scrollDirection: EpubScrollDirection.ALLDIRECTIONS,
      enableTts: true,
    );
    super.onInit();
  }

  Future<void> openBook() async {
    await EpubViewer.openAsset(
      'assets/books/test_episode.epub',
    );
  }
}
