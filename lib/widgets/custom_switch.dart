import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomSwitch extends StatelessWidget {
  bool val;
  void Function(bool value) onChangedMethod;

  CustomSwitch({super.key, required this.onChangedMethod, required this.val});

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      activeColor: AppColors.primaryColor,
      trackColor: Colors.grey,
      value: val,
      onChanged: onChangedMethod,
    );
  }
}
