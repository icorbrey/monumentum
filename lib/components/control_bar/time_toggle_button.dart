import 'package:flutter/material.dart';
import 'package:monumentum/components/helpers/localized_button.dart';

class TimeToggleButton extends StatelessWidget {
  TimeToggleButton({
    this.isRunning,
    this.onStart,
    this.onStop,
  });
  
  final bool isRunning;
  final void Function() onStart;
  final void Function() onStop;

  @override Widget build(BuildContext context) => !isRunning
    ? _getStartButton()
    : _getStopButton();

  Widget _getStartButton() => LocalizedButton(
    icon: Icon(Icons.play_arrow),
    tooltip: 'tooltip-button-begin',
    onPressed: this.onStart,
  );

  Widget _getStopButton() => LocalizedButton(
    icon: Icon(Icons.stop),
    tooltip: 'tooltip-button-end',
    onPressed: this.onStop,
  );
}
