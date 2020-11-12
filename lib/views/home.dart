import 'package:flutter/material.dart';
import 'package:monumentum/components/control_bar.dart';
import 'package:monumentum/components/time_controls/time_record_button.dart';
import 'package:monumentum/components/timestamp_list.dart';

class Home extends StatelessWidget {
  Home(this.title);

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(title),
    ),
    body: TimestampList(),
    bottomNavigationBar: ControlBar(),
    floatingActionButton: RecordButton(),
    floatingActionButtonLocation: RecordButton.location,
  );
}
