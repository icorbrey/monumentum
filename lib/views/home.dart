import 'package:flutter/material.dart';
import 'package:monumentum/components/control_bar/control_bar.dart';
import 'package:monumentum/components/control_bar/time_record_button.dart';
import 'package:monumentum/types/timestamp.dart';
import 'package:monumentum/components/timestamp_list.dart';

class Home extends StatelessWidget {
  Home(this.title);

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(title),
    ),
    body: TimestampList(
      startTime: DateTime(2020, 10, 26, 4),
      timestamps: [
        Timestamp(
          transcript: 'Set up Flutter project',
          time: DateTime(2020, 10, 26, 4, 13)
        ),
        Timestamp(
          transcript: 'Set up Git repo',
          time: DateTime(2020, 10, 26, 4, 22)
        ),
        Timestamp(
          transcript: 'Added bottom app bar',
          time: DateTime(2020, 10, 26, 4, 41)
        ),
        Timestamp(
          transcript: 'Added timestamp list',
          time: DateTime(2020, 10, 26, 4, 55)
        ),
        Timestamp(
          transcript: 'Finalized everything',
          time: DateTime(2020, 10, 26, 5, 0)
        ),
      ]
    ),
    bottomNavigationBar: ControlBar(
      onStop: _onEnd,
      onStart: _onBegin,
      onFinalize: _onFinalize,
      isRunning: true,
    ),
    floatingActionButton: RecordButton(
      onRecord: _onRecord,
    ),
    floatingActionButtonLocation: RecordButton.location,
  );

  void _onBegin() {}
  void _onEnd() {}
  void _onFinalize() {}
  void _onRecord() {}
}
