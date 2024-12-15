import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/app_spacing.dart';
import '../../../constants/app_svgs.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_form_field.dart';

class HomeAdress extends StatelessWidget {
  const HomeAdress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.defaultPaddingAll,
      child: Column(
        children: [
          AppFormField(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.string(AppSvgs.colony),
            ),
            hintText: "Colony",
          ),
          AppSpacing.heightSpace20,
          AppFormField(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.string(AppSvgs.streetno),
            ),
            hintText: "Street No.",
          ),
          AppSpacing.heightSpace10,
          AppDropDownField(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.string(AppSvgs.houseno),
            ),
            hintText: "House No.",
            items: const [
              "abc",
              "abv",
            ],
            onChanged: (String? value) {},
          ),
          AppSpacing.heightSpace20,
          AppFormField(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.string(AppSvgs.city),
            ),
            hintText: "City",
          ),
          AppSpacing.heightSpace20,
          AppFormField(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.string(AppSvgs.postcode),
            ),
            hintText: "Post Code",
          ),
          AppSpacing.heightSpace20,
          AppFormField(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.string(AppSvgs.bell),
            ),
            hintText: "Bell Name",
          ),
          AppSpacing.heightSpace20,
          Image.asset("assets/images/map2.png"),
          AppSpacing.heightSpace40,
          AppButton(
            text: "Add New Addresses",
            fontSize: 16,
            fontWeight: FontWeight.w400,
            height: 50,
            textColor: Colors.white,
            onTap: () {
              // AppNavigations.to(context, nextScreen: const NewAdresses());
            },
          )
        ],
      ),
    );
  }
}
