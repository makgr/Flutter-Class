import 'package:flutter/foundation.dart';

class TimerModel extends ChangeNotifier{
  int _counter = 60;

  getCounter() => _counter;

  updateCounter(){
    _counter --;

    notifyListeners();
  }
}