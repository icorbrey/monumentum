import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

class TimerModel extends ChangeNotifier {
  
  bool _isRunning = false;
  bool get isRunning => _isRunning;

  DateTime _startTime;
  DateTime get startTime => _startTime;

  void start() {
    _isRunning = true;
    _startTime = DateTime.now();
    notifyListeners();
  }

  Tuple2<DateTime, DateTime> stamp() {
    var start = _startTime;
    var end = DateTime.now();
    _startTime = end;
    notifyListeners();
    return Tuple2(start, end);
  }

  void stop() {
    _isRunning = false;
    _startTime = null;
    notifyListeners();
  }
}
