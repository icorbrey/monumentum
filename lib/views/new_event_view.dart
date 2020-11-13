import 'package:flutter/material.dart';
import 'package:monumentum/models/history_model.dart';
import 'package:monumentum/models/locale_model.dart';
import 'package:monumentum/models/timer_model.dart';
import 'package:monumentum/types/timestamp.dart';
import 'package:provider/provider.dart';

class NewEventView extends StatelessWidget {
  @override Widget build(BuildContext context) => Consumer3<LocaleModel, TimerModel, HistoryModel>(
    builder: (context, locale, timer, history, child) => Scaffold(
      appBar: _getAppBar(locale),
      body: _getNameField(context, locale, timer, history),
    ),
  );
  
  Widget _getAppBar(LocaleModel locale) => AppBar(
    title: Text(locale.strings['page-event-new'])
  );

  Widget _getNameField(BuildContext context, LocaleModel locale, TimerModel timer, HistoryModel history) => Padding(
    padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
    child: TextField(
      onSubmitted: _onSubmit(context, timer, history),
      autofocus: true,
      maxLines: 1,
      decoration: InputDecoration(
        labelText: locale.strings['tooltip-button-event-add']
      ),
    ),
  );

  void Function(String) _onSubmit(BuildContext context, TimerModel timer, HistoryModel history) => (String description) {
    if (description.isEmpty) return;
    
    var times = timer.stamp();
    history.addTimestamp(Timestamp(
      description: description,
      startTime: times.item1,
      stopTime: times.item2,
    ));
    Navigator.pop(context);
  };
}
