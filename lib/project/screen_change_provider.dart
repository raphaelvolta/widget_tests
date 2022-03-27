import 'package:flutter/material.dart';

class ScreenChangeProvider extends ChangeNotifier{

  String currentPage = "";

  get getCurrentPage => currentPage;

  setCurrentPage(String newPage) {
    currentPage = newPage;
    print(currentPage);
    notifyListeners();
  }

}