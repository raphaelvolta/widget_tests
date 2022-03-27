import 'package:flutter/material.dart';

class SideBarCollapseStatusProvider extends ChangeNotifier{
  bool _isExpanded = true;

  get isExpanded => _isExpanded;

  void changeCollapseStatusSideBar(){
    _isExpanded = !_isExpanded;
    print("Change collapse status.");
    notifyListeners();
  }
}