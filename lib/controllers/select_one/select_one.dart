import 'package:get/get.dart';

class SelectOneController extends GetxController{
  bool isSelected = true;
  changeValue(bool value) {
    isSelected = value;
    update();
  }
}