import 'package:flutter/material.dart';
import 'package:monumentum/app.dart';
import 'package:monumentum/models/history_model.dart';
import 'package:monumentum/models/locale_model.dart';
import 'package:monumentum/models/timer_model.dart';
import 'package:provider/provider.dart';

const defaultLocale = 'en';

void main() => runApp(MultiProvider(
  child: App(),
  providers: [
    ChangeNotifierProvider(create: (_) => TimerModel()),
    ChangeNotifierProvider(create: (_) => HistoryModel()),
    ChangeNotifierProvider(create: (_) => LocaleModel(defaultLocale)),
  ],
));
