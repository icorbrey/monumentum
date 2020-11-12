import 'package:flutter/material.dart';
import 'package:monumentum/components/helpers/localized_button.dart';
import 'package:monumentum/models/timer_model.dart';
import 'package:provider/provider.dart';

class TimeToggleButton extends StatelessWidget {
  @override Widget build(BuildContext context) => Consumer<TimerModel>(
    builder: (context, timer, child) => !timer.isRunning
      ? _getStartButton(timer)
      : _getStopButton(timer)
  );

  Widget _getStartButton(TimerModel timer) => LocalizedButton(
    icon: Icon(Icons.play_arrow),
    tooltip: 'tooltip-button-begin',
    onPressed: () => timer.start(),
  );

  Widget _getStopButton(TimerModel timer) => LocalizedButton(
    icon: Icon(Icons.stop),
    tooltip: 'tooltip-button-end',
    onPressed: () => timer.stop(),
  );
}
