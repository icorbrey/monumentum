import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:monumentum/locale/en.dart';

class LocaleModel extends ChangeNotifier {
  LocaleModel(String initialLocale) {
    changeLocale(initialLocale);
  }

  Map<String, String> _activeLocale = en;

  final Map<String, Map<String, String>> _locales = {
    'en': en,
  };

  UnmodifiableMapView<String, String> get strings =>
    UnmodifiableMapView(_activeLocale);

  void changeLocale(String locale) {
    if (_locales.containsKey(locale)) {
      _activeLocale = _locales[locale];
      notifyListeners();
    }
  }
}
