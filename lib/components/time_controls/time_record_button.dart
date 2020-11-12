import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monumentum/models/history_model.dart';
import 'package:monumentum/models/locale_model.dart';
import 'package:monumentum/models/timer_model.dart';
import 'package:monumentum/types/timestamp.dart';
import 'package:provider/provider.dart';

var i = 1;

class RecordButton extends StatelessWidget {
  static const location = FloatingActionButtonLocation.centerDocked;

  @override
  Widget build(BuildContext context) => Consumer<LocaleModel>(
    builder: (context, locale, child) => Consumer<HistoryModel>(
      builder: (context, history, child) => Consumer<TimerModel>(
        builder: (context, timer, child) => _getButton(locale, history, timer)
      )
    )
  );

  Widget _getButton(LocaleModel locale, HistoryModel history, TimerModel timer) => timer.isRunning
    ? _getEnabledButton(locale, history, timer)
    : _getDisabledButton(locale, history, timer);

  Widget _getEnabledButton(LocaleModel locale, HistoryModel history, TimerModel timer) => FloatingActionButton(
    child: Icon(Icons.fiber_manual_record),
    tooltip: locale.strings['tooltip-button-record'],
    onPressed: () => _addTimestamp(history, timer)
  );

  Widget _getDisabledButton(LocaleModel locale, HistoryModel history, TimerModel timer) => FloatingActionButton(
    child: Icon(Icons.horizontal_rule),
    disabledElevation: 1,
    onPressed: null
  );

  void _addTimestamp(HistoryModel history, TimerModel timer) {
    var times = timer.stamp();
    history.addTimestamp(Timestamp(
      description: 'New Timestamp ${i++}',
      startTime: times.item1,
      stopTime: times.item2,
    ));
  }
}
