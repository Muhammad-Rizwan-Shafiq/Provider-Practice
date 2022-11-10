import 'package:flutter/foundation.dart';

class SliderProvider with ChangeNotifier {
  double _value = 1.0;
  double get value {
    return _value;
  }
  void setValue(val){
    _value=val;
    notifyListeners();
  }
}
