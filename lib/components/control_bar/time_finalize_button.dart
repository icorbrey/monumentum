import 'package:flutter/material.dart';
import 'package:monumentum/components/helpers/localized_button.dart';

class TimeFinalizeButton extends StatelessWidget {
  TimeFinalizeButton({
    this.onFinalize,
  });
  
  final void Function() onFinalize;

  @override Widget build(BuildContext context) => LocalizedButton(
    icon: Icon(Icons.check),
    tooltip: 'tooltip-button-finalize',
    onPressed: this.onFinalize,
  );
}
