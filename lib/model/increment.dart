import 'package:flutter/material.dart';

class Increment extends ChangeNotifier {
  int _increment = 0;
  int get increment => _increment;

  void add() {
    _increment++;
    notifyListeners();
  }
}
