import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gastronomy_app/constants/app_colors.dart';
import 'package:gastronomy_app/constants/app_spacing.dart';
import 'package:gastronomy_app/constants/app_svgs.dart';
import 'package:gastronomy_app/widgets/app_text.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 14),
                height: 270,
                width: double.infinity,
                decoration: const BoxDecoration(color: Color(0xffFDF5EF)),
                child: Padding(
                  padding: AppSpacing.defaultPaddingAll,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppSpacing.heightSpace30,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset("assets/icons/waiters.svg"),
                          SvgPicture.string(
                            AppSvgs.line,
                            height: 80,
                          ),
                          SvgPicture.asset("assets/icons/makeup_blur.svg"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                        border: Border.all(
                            color: AppColors.primaryColor, width: 6)),
                  ),
                  Container(
                    height: 28,
                    width: 28,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xffC4C4C4),
                        )),
                  )
                ],
              )
            ],
          ),
          AppSpacing.heightSpace40,
          SvgPicture.asset("assets/icons/no_fav.svg"),
          AppSpacing.heightSpace20,
          const AppText(
            text: "No favorites yet!",
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Color(0xff7B7B7B),
          ),
        ],
      ),
    );
  }
}
