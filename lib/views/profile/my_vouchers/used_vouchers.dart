import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gastronomy_app/constants/app_spacing.dart';
import 'package:gastronomy_app/widgets/app_text.dart';

class UsedVouchers extends StatelessWidget {
  const UsedVouchers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSpacing.heightSpace30,
        AppSpacing.heightSpace30,
        AppSpacing.heightSpace30,
        SvgPicture.asset("assets/icons/empty_voucher.svg"),
        AppSpacing.heightSpace30,
        const AppText(
          text: "You don’t have any voucher to use!",
          color: Color(0xff7E7E7E),
          fontSize: 20,
          fontWeight: FontWeight.w300,
        )
      ],
    );
  }
}
