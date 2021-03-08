class EpisodeModel {
  final int episodeNumber;
  final String episodeTitle;
  final Duration episodeDuration;

  EpisodeModel({
    this.episodeNumber,
    this.episodeTitle,
    this.episodeDuration,
  });
}

EpisodeModel get previewEpisode => EpisodeModel(
      episodeNumber: 0,
      episodeTitle: 'Preview',
      episodeDuration: Duration(
        hours: 0,
        minutes: 30,
        seconds: 25,
      ),
    );

List<EpisodeModel> get allEpisodes => [
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
          seconds: 0,
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
    ];
