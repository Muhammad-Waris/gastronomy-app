import 'package:flutter/material.dart';
import 'package:gastronomy_app/views/HomeScreen/homepage.dart';
import 'package:gastronomy_app/views/notifications/notifications.dart';
import 'package:gastronomy_app/views/profile/Profile.dart';
import 'package:get/get.dart';

import '../views/favourites/favourites.dart';

class MainPageController extends GetxController {
  int selectedIndex = 0;
  changeIndex(int index) {
    selectedIndex = index;
    update();
  }

  List<Widget> allScreens = [
    HomePage(),
    Favourites(),
    Notifications(),
    Profile(),
  ];
}
