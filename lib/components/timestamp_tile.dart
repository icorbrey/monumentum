import 'package:flutter/material.dart';
import 'package:monumentum/types/timestamp.dart';

class TimestampTile extends StatelessWidget {
  TimestampTile({
    this.startTime,
    this.timestamp,
  });

  final DateTime startTime;
  final Timestamp timestamp;
  
  @override
  Widget build(BuildContext context) => ListTile(
    title: Text(timestamp.transcript),
    subtitle: Text(_getDuration()),
    visualDensity: VisualDensity.compact,
    trailing: IconButton(
      icon: Icon(Icons.more_horiz),
      onPressed: () {},
    ),
  );

  String _getDuration() {
    var duration = timestamp.time.difference(startTime);
    var hours = duration.inHours.toString();
    var minutes = duration.inMinutes.toString().padLeft(2, '0');
    return '$hours:$minutes';
  }
}
