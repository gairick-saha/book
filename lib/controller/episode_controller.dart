import 'package:book/models/episode_model.dart';
import 'package:get/get.dart';

class EpisodeController extends GetxController {
  List<EpisodeModel> _allEpisodes = List.empty();

  @override
  void onInit() {
    _allEpisodes = [
      EpisodeModel(
        episodeNumber: 0,
        episodeTitle: 'Preview',
        episodeDuration: Duration(
          hours: 0,
          minutes: 30,
          seconds: 25,
        ),
      ),
      EpisodeModel(
        episodeNumber: 1,
        episodeTitle: 'Destiny',
        episodeDuration: Duration(
          hours: 0,
          minutes: 30,
          seconds: 20,
        ),
      ),
      EpisodeModel(
        episodeNumber: 2,
        episodeTitle: 'Game of the Darkness',
        episodeDuration: Duration(
          hours: 0,
          minutes: 30,
          seconds: 20,
        ),
      ),
      EpisodeModel(
        episodeNumber: 3,
        episodeTitle: 'Andora Icelands ',
        episodeDuration: Duration(
          hours: 1,
          minutes: 25,
          seconds: 00,
        ),
      ),
      EpisodeModel(
        episodeNumber: 4,
        episodeTitle: 'Destiny',
        episodeDuration: Duration(
          hours: 0,
          minutes: 30,
          seconds: 20,
        ),
      ),
      EpisodeModel(
        episodeNumber: 5,
        episodeTitle: 'Game of the Darkness',
        episodeDuration: Duration(
          hours: 0,
          minutes: 30,
          seconds: 20,
        ),
      ),
      EpisodeModel(
        episodeNumber: 6,
        episodeTitle: 'Andora Icelands ',
        episodeDuration: Duration(
          hours: 1,
          minutes: 25,
          seconds: 0,
        ),
      ),
      EpisodeModel(
        episodeNumber: 7,
        episodeTitle: 'Destiny',
        episodeDuration: Duration(
          hours: 0,
          minutes: 30,
          seconds: 20,
        ),
      ),
      EpisodeModel(
        episodeNumber: 8,
        episodeTitle: 'Game of the Darkness',
        episodeDuration: Duration(
          hours: 0,
          minutes: 30,
          seconds: 20,
        ),
      ),
      EpisodeModel(
        episodeNumber: 9,
        episodeTitle: 'Andora Icelands ',
        episodeDuration: Duration(
          hours: 1,
          minutes: 25,
          seconds: 0,
        ),
      ),
      EpisodeModel(
        episodeNumber: 10,
        episodeTitle: 'Game of the Darkness',
        episodeDuration: Duration(
          hours: 0,
          minutes: 30,
          seconds: 20,
        ),
      ),
    ];

    super.onInit();
  }

  List<EpisodeModel> get allEpisode => _allEpisodes;
}
