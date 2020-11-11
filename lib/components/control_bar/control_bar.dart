import 'package:flutter/material.dart';
import 'package:monumentum/components/control_bar/time_finalize_button.dart';
import 'package:monumentum/components/control_bar/time_toggle_button.dart';
import 'package:monumentum/types/event_handler.dart';

class ControlBar extends StatelessWidget {
  ControlBar({
    @required this.onStart,
    @required this.onStop,
    @required this.onFinalize,
    @required this.isRunning,
  });

  final bool isRunning;
  final EventHandler onStart;
  final EventHandler onStop;
  final EventHandler onFinalize;

  @override
  Widget build(BuildContext context) => BottomAppBar(
    color: Colors.teal[100],
    child: _getButtonList(
      timeButton: TimeToggleButton(
        isRunning: this.isRunning,
        onStart: this.onStart,
        onStop: this.onStop,
      ),
      timeFinalizeButton: TimeFinalizeButton(
        onFinalize: this.onFinalize,
      )
    )
  );
}

Widget _getButtonList({ Widget timeButton, Widget timeFinalizeButton }) => Row(
  children: [
    Spacer(flex: 2),
    timeButton,
    Spacer(flex: 1),
    timeFinalizeButton,
    Spacer(flex: 2),
  ],
);
