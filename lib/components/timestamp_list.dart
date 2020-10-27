import 'package:flutter/material.dart';
import 'package:monumentum/types/timestamp.dart';
import 'package:monumentum/components/timestamp_tile.dart';

class TimestampList extends StatelessWidget {
  TimestampList({
    @required this.startTime,
    @required this.timestamps,
  });

  final DateTime startTime;
  final List<Timestamp> timestamps;

  @override
  Widget build(BuildContext context) => ListView.builder(
    itemCount: timestamps.length,
    itemBuilder: _buildTimestampTile,
  );

  Widget _buildTimestampTile(BuildContext context, int index) => TimestampTile(
    startTime: _getStartTime(index),
    timestamp: timestamps[index],
  );

  DateTime _getStartTime(int index) => index != 0
    ? timestamps[index - 1].time
    : startTime;
}
