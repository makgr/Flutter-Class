import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class TimerModel extends ChangeNotifier{
  var _remainingTime = 60;

  int getRemainingTime()=> _remainingTime;

  updateRemainingTime(){
    _remainingTime--;
    notifyListeners();

  }
}