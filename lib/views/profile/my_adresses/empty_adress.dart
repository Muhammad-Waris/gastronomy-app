import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gastronomy_app/constants/app_spacing.dart';
import 'package:gastronomy_app/views/profile/my_adresses/my_adresses.dart';

import '../../../utils/app_navigations.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_text.dart';

class EmptyAdress extends StatelessWidget {
  const EmptyAdress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff000000).withOpacity(0.18),
                      offset: const Offset(0, 0),
                      blurRadius: 8,
                      blurStyle: BlurStyle.outer,
                    )
                  ]),
              child: const Center(
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Color(0xff333333),
                  size: 18,
                ),
              ),
            ),
          ),
        ),
        title: const AppText(
          text: "My Addresses",
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color(0xff333333),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: AppSpacing.defaultPaddingAll,
        child: Column(
          children: [
            const Spacer(),
            Center(child: SvgPicture.asset("assets/icons/no_address.svg")),
            AppSpacing.heightSpace30,
            const AppText(
              text: "You don’t have any addresses yet!",
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Color(0xff7B7B7B),
            ),
            const Spacer(),
            AppButton(
              text: "Add New Addresses",
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 50,
              textColor: Colors.white,
              onTap: () {
                AppNavigations.to(context, nextScreen: const MyAdresses());
              },
            )
          ],
        ),
      ),
    );
  }
}
