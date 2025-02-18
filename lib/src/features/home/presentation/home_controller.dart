import 'package:eco_vision_app/src/features/home/presentation/home_config_page.dart';
import 'package:flutter/material.dart';

class HomeController with ChangeNotifier {
  int selectedIndex = 0;
  late List<Widget> pages;

  HomeController() {
    pages = [
      const HomePage(),
      const Center(),
      const Center(),
      const Center(),
    ];
  }

  void setIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
