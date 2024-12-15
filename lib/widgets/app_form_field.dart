import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_spacing.dart';
import 'app_text.dart';

class AppFormField extends StatelessWidget {
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? prefixIcon, suffixIcon;
  final String? hintText;
  final bool obsecureText, readOnly;
  final VoidCallback? onTap;
  final int? maxLength, maxLines;
  final TextInputType? keyboardType;
  const AppFormField({
    Key? key,
    this.contentPadding,
    this.controller,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obsecureText = false,
    this.readOnly = false,
    this.onTap,
    this.maxLength,
    this.maxLines = 1,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          textInputAction: TextInputAction.next,
          keyboardType: keyboardType,
          maxLength: maxLength,
          maxLines: maxLines,
          onTap: onTap,
          readOnly: readOnly,
          obscureText: obsecureText,
          controller: controller,
          decoration: InputDecoration(
            counterText: "",
            filled: true,
            contentPadding: contentPadding,
            prefixIcon: prefixIcon,
            hintText: hintText,
            suffixIcon: suffixIcon,
            hintStyle: GoogleFonts.poppins(color: const Color(0xff8D8D8D)),
            fillColor: const Color(0xffF9F9FB),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}

class AppDropDownField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final Widget? prefixIcon, suffixIcon;
  final String? hintText;
  final List<String> items;
  final VoidCallback? onTap;
  final void Function(String? value)? onChanged;
  const AppDropDownField({
    Key? key,
    this.contentPadding,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
    required this.items,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       
        DropdownButtonFormField(
          icon: const Icon(
            Icons.keyboard_arrow_down_rounded,
          ),
          onChanged: onChanged,
          onTap: onTap,
          items: items
              .map(
                (e) => DropdownMenuItem(
                  value: e,
                  child: AppText(
                    text: e,
                  ),
                ),
              )
              .toList(),
          decoration: InputDecoration(
            filled: true,
            contentPadding: contentPadding,
            prefixIcon: prefixIcon,
            hintText: hintText,
            suffixIcon: suffixIcon,
            hintStyle: GoogleFonts.poppins(color: const Color(0xff8D8D8D)),
            fillColor: const Color(0xffF9F9FB),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
