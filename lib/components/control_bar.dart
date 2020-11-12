import 'package:flutter/material.dart';
import 'package:monumentum/components/time_controls/time_finalize_button.dart';
import 'package:monumentum/components/time_controls/time_toggle_button.dart';

class ControlBar extends StatelessWidget {
  @override Widget build(BuildContext context) => BottomAppBar(
    color: Colors.teal[100],
    child: _getButtonList(
      leftButton: TimeToggleButton(),
      rightButton: TimeFinalizeButton()
    )
  );
}

Widget _getButtonList({ Widget leftButton, Widget rightButton }) => Row(
  children: [
    Spacer(flex: 2),
    leftButton,
    Spacer(flex: 1),
    rightButton,
    Spacer(flex: 2),
  ],
);
