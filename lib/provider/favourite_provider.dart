import 'package:flutter/material.dart';

class FavouriteValueprovider with ChangeNotifier {
  List<int> _selected = [];
 List<int> get selected => _selected;

  void isiteamselected (int val){
  if(_selected.contains(val)){ getremoved(val);}
  else{getselected(val);}
   notifyListeners();
  }

  void getselected(int val) {
    _selected.add(val);

    notifyListeners();
  }

  void getremoved(int val) {
    _selected.remove(val);
    notifyListeners();
  }
}
