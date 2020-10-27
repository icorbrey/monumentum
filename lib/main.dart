import 'package:flutter/material.dart';
import 'package:monumentum/app.dart';
import 'package:monumentum/models/locale_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocaleModel('en'))
      ],
      child: App(),
    )
  );
}
