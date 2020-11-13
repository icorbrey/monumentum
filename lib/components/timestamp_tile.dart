import 'package:flutter/material.dart';
import 'package:monumentum/models/history_model.dart';
import 'package:monumentum/models/locale_model.dart';
import 'package:monumentum/types/timestamp.dart';
import 'package:provider/provider.dart';

class TimestampTile extends StatelessWidget {
  TimestampTile({
    this.timestamp,
  });

  final Timestamp timestamp;

  @override
  Widget build(BuildContext context) => ListTile(
    title: Text(timestamp.description),
    subtitle: Text(_getDuration()),
    visualDensity: VisualDensity.compact,
    trailing: Consumer2<LocaleModel, HistoryModel>(
      builder: (context, locale, history, child) => IconButton(
        icon: Icon(Icons.delete),
        tooltip: locale.strings['tooltip-button-delete'],
        onPressed: () => history.deleteTimestamp(timestamp.id),
      ),
    ),
  );

  String _getDuration() {
    var duration = timestamp.duration();
    var hours = duration.inHours.toString();
    var minutes = duration.inMinutes.toString().padLeft(2, '0');
    return '$hours:$minutes';
  }
}
