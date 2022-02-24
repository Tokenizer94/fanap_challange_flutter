import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  /// `Variables`
  int _selectedItemIndex = 0;

  ///  `Getters`
  int get selectedItemIndex => _selectedItemIndex;

  ///  `Setters`
  set selectedItemIndex(int value) {
    _selectedItemIndex = value;
    notifyListeners();
  }
}
