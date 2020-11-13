import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monumentum/models/locale_model.dart';
import 'package:monumentum/models/timer_model.dart';
import 'package:monumentum/views/new_event_view.dart';
import 'package:provider/provider.dart';

class RecordButton extends StatelessWidget {
  static const location = FloatingActionButtonLocation.centerDocked;

  @override Widget build(BuildContext context) => Consumer2<LocaleModel, TimerModel>(
    builder: (context, locale, timer, child) => timer.isRunning
    ? _getEnabledButton(context, locale, timer)
    : _getDisabledButton(context, locale, timer)
  );

  Widget _getEnabledButton(BuildContext context, LocaleModel locale, TimerModel timer) => FloatingActionButton(
    child: Icon(Icons.fiber_manual_record),
    tooltip: locale.strings['tooltip-button-record'],
    onPressed: () => Navigator.push(context, MaterialPageRoute(
      builder: (context) => NewEventView()
    ))
  );

  Widget _getDisabledButton(BuildContext context, LocaleModel locale, TimerModel timer) => FloatingActionButton(
    child: Icon(Icons.horizontal_rule),
    disabledElevation: 1,
    onPressed: null
  );
}
