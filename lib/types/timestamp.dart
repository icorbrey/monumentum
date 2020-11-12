class Timestamp {
  const Timestamp({
    this.description,
    this.startTime,
    this.stopTime,
  });

  final String description;
  final DateTime startTime;
  final DateTime stopTime;

  Duration duration() =>
    stopTime.difference(startTime);
}
