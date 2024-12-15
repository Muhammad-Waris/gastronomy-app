import 'package:get/get.dart';

class HomePageController extends GetxController {
  bool isSelected = true;
  bool isSelected2 = false;
   int selectedIndex = 0;
  changeIndex(int index) {
    selectedIndex = index;
    update();
  }

  changeVlue(bool value) {
    isSelected = value;
    update();
  }

  changeVlue2(bool value) {
    isSelected2 = value;
    update();
  }
}
