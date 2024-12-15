import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gastronomy_app/constants/app_spacing.dart';
import 'package:gastronomy_app/constants/app_svgs.dart';
import 'package:gastronomy_app/widgets/app_text.dart';

class CancelledBooking extends StatelessWidget {
  const CancelledBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSpacing.heightSpace30,
        Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xffDADADA),
                )),
            child: Padding(
              padding: const EdgeInsets.all(44.0),
              child: SvgPicture.string(AppSvgs.nobooking),
            )),
        AppSpacing.heightSpace30,
        const AppText(
          text: "No Cancelled bookings yet!",
          color: Color(0xff7B7B7B),
          fontWeight: FontWeight.w300,
          fontSize: 18,
        )
      ],
    );
  }
}
