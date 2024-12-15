import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gastronomy_app/constants/app_colors.dart';
import 'package:gastronomy_app/constants/app_spacing.dart';
import 'package:gastronomy_app/constants/app_svgs.dart';
import 'package:gastronomy_app/controllers/homepage_controller/homepage_controller.dart';
import 'package:gastronomy_app/views/HomeScreen/general.dart';
import 'package:gastronomy_app/views/HomeScreen/menu.dart';
import 'package:gastronomy_app/widgets/app_button.dart';
import 'package:gastronomy_app/widgets/app_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'feedback.dart';
import 'portfolio.dart';

class RestaurantDetails extends StatelessWidget {
  const RestaurantDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Image.asset("assets/images/cover.png"),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 22, right: 22, bottom: 100),
                      child: Column(
                        children: [
                          AppSpacing.heightSpace20,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 38,
                                  width: 38,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white10,
                                          offset: Offset(2, -3),
                                          spreadRadius: 0,
                                          blurRadius: 0,
                                        )
                                      ]),
                                  child: const Center(
                                    child: Icon(
                                      Icons.arrow_back_ios_new_outlined,
                                      size: 14,
                                      weight: 10,
                                      color: Color(0xff455A64),
                                    ),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 38,
                                  width: 38,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white10,
                                          offset: Offset(2, -3),
                                          spreadRadius: 0,
                                          blurRadius: 0,
                                        )
                                      ]),
                                  child: const Center(
                                    child: Icon(
                                      Icons.favorite_outline,
                                      size: 20,
                                      weight: 10,
                                      color: Color(0xff455A64),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/images/profile_pic.png",
                      height: 140,
                      width: 140,
                    ),
                  ],
                )
              ],
            ),
            const AppText(
              text: "Skykitchen",
              color: Colors.black,
              fontSize: 28,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.77,
                child: const AppText(
                  text:
                      "Landsberger Allee 106 im andel’s Hotel Berline, 10369 Berlin",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff455A64),
                )),
            AppSpacing.heightSpace10,
            RatingBar.builder(
              itemSize: 20,
              initialRating: 3,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: const Color(0xffFCBA63),
                    )),
                child: const Icon(
                  Icons.star,
                  color: Color(0xffFCBA63),
                ),
              ),
              onRatingUpdate: (rating) {},
            ),
            AppSpacing.heightSpace10,
            RichText(
                text: TextSpan(
                    text: "(",
                    style: GoogleFonts.poppins(
                      color: const Color(0xffA4A5A7),
                      fontSize: 12,
                    ),
                    children: [
                  TextSpan(
                    text: "3.1 ",
                    style: GoogleFonts.poppins(
                      color: const Color(0xffFCBA63),
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: "| 21) Reviews",
                    style: GoogleFonts.poppins(
                      color: const Color(0xffA4A5A7),
                      fontSize: 12,
                    ),
                  )
                ])),
            AppSpacing.heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 42,
                  width: MediaQuery.of(context).size.width * 0.50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: const Color(0xff7B7B7B),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.string(
                        AppSvgs.time,
                      ),
                      const AppText(
                        text: "Do (10:00 - 20:00)",
                        color: Color(0xff455A64),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 42,
                  width: MediaQuery.of(context).size.width * 0.30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: const Color(0xff008108),
                    ),
                  ),
                  child: const Center(
                    child: AppText(
                      text: "Open",
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff008108),
                    ),
                  ),
                ),
              ],
            ),
            AppSpacing.heightSpace20,
            SvgPicture.asset("assets/icons/divider.svg"),
            AppSpacing.heightSpace20,
            GetBuilder<HomePageController>(
                init: HomePageController(),
                builder: (controller) {
                  return Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 11, right: 11),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(color: const Color(0xffE0E0E0))),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4, right: 4),
                            child: Row(
                              children: [
                                Expanded(
                                  child: AppButton(
                                    borderColor: Colors.transparent,
                                    textColor: controller.selectedIndex == 0
                                        ? const Color(0xffFFFFFF)
                                        : const Color(0xff9E9E9E),
                                    color: controller.selectedIndex == 0
                                        ? AppColors.primaryColor
                                        : Colors.transparent,
                                    onTap: () {
                                      controller.changeIndex(0);
                                    },
                                    borderRadius: 24,
                                    height: 50,
                                    text: "Menu",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                                Expanded(
                                  child: AppButton(
                                    borderColor: Colors.transparent,
                                    textColor: controller.selectedIndex == 1
                                        ? const Color(0xffFFFFFF)
                                        : const Color(0xff9E9E9E),
                                    color: controller.selectedIndex == 1
                                        ? AppColors.primaryColor
                                        : Colors.transparent,
                                    onTap: () {
                                      controller.changeIndex(1);
                                    },
                                    borderRadius: 24,
                                    height: 50,
                                    text: "General",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Expanded(
                                  child: AppButton(
                                    borderColor: Colors.transparent,
                                    textColor: controller.selectedIndex == 2
                                        ? const Color(0xffFFFFFF)
                                        : const Color(0xff9E9E9E),
                                    color: controller.selectedIndex == 2
                                        ? AppColors.primaryColor
                                        : Colors.transparent,
                                    onTap: () {
                                      controller.changeIndex(2);
                                    },
                                    borderRadius: 24,
                                    height: 50,
                                    text: "Portfolio",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Expanded(
                                  child: AppButton(
                                    borderColor: Colors.transparent,
                                    textColor: controller.selectedIndex == 3
                                        ? const Color(0xffFFFFFF)
                                        : const Color(0xff9E9E9E),
                                    color: controller.selectedIndex == 3
                                        ? AppColors.primaryColor
                                        : Colors.transparent,
                                    onTap: () {
                                      controller.changeIndex(3);
                                    },
                                    borderRadius: 24,
                                    height: 50,
                                    text: "Feedback",
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      AppSpacing.heightSpace20,
                      controller.selectedIndex == 0
                          ? const Menu()
                          : controller.selectedIndex == 1
                              ? const General()
                              : controller.selectedIndex == 2
                                  ? const Portfolio()
                                  : const FeedBack(),
                      AppSpacing.heightSpace20,
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
