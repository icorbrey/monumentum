import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monumentum/models/locale_model.dart';
import 'package:monumentum/types/event_handler.dart';
import 'package:provider/provider.dart';

class RecordButton extends StatelessWidget {
  RecordButton({
    this.onRecord,
  });

  static const location = FloatingActionButtonLocation.centerDocked;

  final EventHandler onRecord;

  @override
  Widget build(BuildContext context) => Consumer<LocaleModel>(
    builder: (context, locale, child) => FloatingActionButton(
      child: Icon(Icons.fiber_manual_record),
      tooltip: locale.strings['tooltip-button-record'],
      onPressed: onRecord,
    )
  );
}
