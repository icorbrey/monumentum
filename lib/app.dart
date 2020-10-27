import 'package:flutter/material.dart';
import 'package:monumentum/views/home.dart';

class App extends StatelessWidget {
  final title = 'Monumentum';
  final theme = ThemeData(
    primarySwatch: Colors.teal,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: title,
    theme: theme,
    home: Home(title),
  );
}
