import 'package:flutter/material.dart';
import 'package:monumentum/types/timestamp.dart';

class HistoryModel extends ChangeNotifier {
  List<Timestamp> _timestamps = [];
  List<Timestamp> get timestamps => _timestamps;

  void addTimestamp(Timestamp timestamp) {
    _timestamps.add(timestamp);
    notifyListeners();
  }
}
