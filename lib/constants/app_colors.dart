import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xFFE14942);
  Map<int, int> colorIndex = {
    1: 0,
    2: 156,
    3: 124,
  };
  MaterialColor getMaterialColor() {
    Map<int, Color> color = {
      50: Color.fromRGBO(colorIndex[1]!, colorIndex[2]!, colorIndex[3]!, .1),
      100: Color.fromRGBO(colorIndex[1]!, colorIndex[2]!, colorIndex[3]!, .2),
      200: Color.fromRGBO(colorIndex[1]!, colorIndex[2]!, colorIndex[3]!, .3),
      300: Color.fromRGBO(colorIndex[1]!, colorIndex[2]!, colorIndex[3]!, .4),
      400: Color.fromRGBO(colorIndex[1]!, colorIndex[2]!, colorIndex[3]!, .5),
      500: Color.fromRGBO(colorIndex[1]!, colorIndex[2]!, colorIndex[3]!, .6),
      600: Color.fromRGBO(colorIndex[1]!, colorIndex[2]!, colorIndex[3]!, .7),
      700: Color.fromRGBO(colorIndex[1]!, colorIndex[2]!, colorIndex[3]!, .8),
      800: Color.fromRGBO(colorIndex[1]!, colorIndex[2]!, colorIndex[3]!, .9),
      900: Color.fromRGBO(colorIndex[1]!, colorIndex[2]!, colorIndex[3]!, 1),
    };
    MaterialColor colorCustom = MaterialColor(0xFFE14942, color);
    return colorCustom;
  }

  static const disabledColor = Color(0xffBCBCBC);
  static const backgroundColor = Color(0xffFFFFFF);
  static const headerColor = Color(0xffAEABAB);
    static const secondaryColor = Color(0xff7B7B7B);


  static List<Color> gradientColor = [
    const Color(0xff009191).withOpacity(0.7),
    const Color(0xff06614F).withOpacity(0.7),
    const Color(0xff02271F).withOpacity(0.7),
  ];
}
