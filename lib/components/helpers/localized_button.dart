import 'package:flutter/material.dart';
import 'package:monumentum/models/locale_model.dart';
import 'package:provider/provider.dart';

class LocalizedButton extends StatelessWidget {
  LocalizedButton({
    this.icon,
    this.tooltip,
    this.onPressed,
  });

  final Widget icon;
  final String tooltip;
  final void Function() onPressed;

  @override Widget build(BuildContext context) => Consumer<LocaleModel>(
    builder: (context, locale, child) => IconButton(
      icon: this.icon,
      tooltip: locale.strings[this.tooltip],
      onPressed: this.onPressed,
    )
  );
}
