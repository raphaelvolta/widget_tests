import 'package:flutter/material.dart';

class CustomProviderStorage extends ChangeNotifier{
  String _selectedPage = "";

  String get selectedPage => _selectedPage;

  void changeSelectedPage(String newSelectedPage){
    _selectedPage = newSelectedPage;
    notifyListeners();
  }
}