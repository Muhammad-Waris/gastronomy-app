import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/app_colors.dart';

class AppSnackbar {
  static snackBar({
    int? duration,
    required String title,
    required String message,
  }) {
    Get.snackbar(
      duration: Duration(
        milliseconds: duration ?? 1500,
      ),
      title,
      message,
      backgroundColor: Colors.white.withOpacity(0.4),
      borderColor: AppColors.primaryColor,
      borderWidth: 1.5,
      colorText: AppColors.primaryColor,
    );
  }
}
