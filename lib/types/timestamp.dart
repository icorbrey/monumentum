class Timestamp {
  Timestamp({
    this.id,
    this.description,
    this.startTime,
    this.stopTime,
  });

  int id;
  String description;
  DateTime startTime;
  DateTime stopTime;

  Duration duration() =>
    stopTime.difference(startTime);
}
