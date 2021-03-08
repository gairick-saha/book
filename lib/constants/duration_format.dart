class DurationFormatter {
  static String formatDuration(Duration d) {
    var seconds = d.inSeconds;
    final days = seconds ~/ Duration.secondsPerDay;
    seconds -= days * Duration.secondsPerDay;
    final hours = seconds ~/ Duration.secondsPerHour;
    seconds -= hours * Duration.secondsPerHour;
    final minutes = seconds ~/ Duration.secondsPerMinute;
    seconds -= minutes * Duration.secondsPerMinute;

    final List<String> tokens = [];
    if (days != 0) {
      tokens.add('$days');
    }
    if (tokens.isNotEmpty || hours != 0) {
      tokens.add('$hours');
    }
    if (tokens.isNotEmpty || minutes != 0) {
      tokens.add('$minutes');
    }
    tokens.add('$seconds');

    return tokens.join(':');
  }
}
