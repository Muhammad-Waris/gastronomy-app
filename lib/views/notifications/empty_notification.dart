import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/app_spacing.dart';
import '../../widgets/app_text.dart';

class EmptyNotification extends StatelessWidget {
  const EmptyNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 130,
            width: double.infinity,
            decoration: const BoxDecoration(color: Color(0xffFDF5EF)),
            child: Padding(
              padding: AppSpacing.defaultPaddingAll,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/name_logo.png",
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.27,
                  ),
                  const AppText(
                    text: "Favourites",
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff000000),
                  ),
                ],
              ),
            ),
          ),
            AppSpacing.heightSpace40,
          SvgPicture.asset("assets/icons/no_not.svg"),
          AppSpacing.heightSpace20,
          const AppText(
            text: "No notifications yet!",
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Color(0xff7B7B7B),
          ),
        ],
      ),
    );
  }
}
