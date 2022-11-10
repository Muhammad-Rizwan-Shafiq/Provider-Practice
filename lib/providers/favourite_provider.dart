import 'package:flutter/foundation.dart';

class FavouriteProvider with ChangeNotifier{
  List<int> _selectedItems=[];

  List get selectedItem{
    return _selectedItems;
  }

  void addValue(int value){
    selectedItem.add(value);
    notifyListeners();
  }

  void removeValue(int value){
    selectedItem.remove(value);
    notifyListeners();
  }


}