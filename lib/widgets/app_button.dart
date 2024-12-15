import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../constants/app_colors.dart';
import 'app_text.dart';

class AppButton extends StatelessWidget {
  final double height, borderRadius, fontSize;
  final String text;
  final double? width;
  final VoidCallback? onTap;
  final FontWeight? fontWeight;
  final Color? color, borderColor, textColor;
  final Widget? child;
  final bool isLoading;
  const AppButton({
    Key? key,
    this.isLoading = false,
    this.height = 55,
    required this.text,
    this.onTap,
    this.borderRadius = 15,
    this.color = AppColors.primaryColor,
    this.fontSize = 17,
    this.fontWeight,
    this.width,
    this.borderColor,
    this.textColor,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color: borderColor ?? AppColors.primaryColor,
          ),
          color: color,
        ),
        child: isLoading
            ? const Center(
                child: SpinKitThreeBounce(
                  color: Colors.white,
                  size: 20,
                ),
              )
            : Center(
                child: child ??
                    AppText(
                      text: text,
                      fontSize: fontSize,
                      fontWeight: fontWeight ?? FontWeight.w700,
                      color: color == AppColors.primaryColor
                          ? Colors.white
                          : textColor,
                    ),
              ),
      ),
    );
  }
}
