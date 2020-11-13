import 'package:flutter/material.dart';
import 'package:monumentum/types/timestamp.dart';

class HistoryModel extends ChangeNotifier {
  int _id = 0;
  List<Timestamp> _timestamps = [];
  List<Timestamp> get timestamps => _timestamps;

  void addTimestamp(Timestamp timestamp) {
    timestamp.id = _id++;
    _timestamps.add(timestamp);
    notifyListeners();
  }

  void renameTimestamp(int id, String description) {
    _timestamps[_getIndex(id)].description = description;
    notifyListeners();
  }

  void deleteTimestamp(int id) {
    _timestamps.removeAt(_getIndex(id));
    notifyListeners();
  }

  int _getIndex(int id) => _timestamps
    .indexWhere((timestamp) => timestamp.id == id);
}
