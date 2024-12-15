import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gastronomy_app/constants/app_colors.dart';
import 'package:gastronomy_app/constants/app_spacing.dart';
import 'package:gastronomy_app/constants/app_svgs.dart';
import 'package:gastronomy_app/views/profile/my_adresses/home_adress.dart';
import 'package:gastronomy_app/views/profile/my_adresses/office_address.dart';
import 'package:get/get.dart';
import '../../../controllers/profile_controllers/my_booking_controller/my_booking_controller.dart';
import '../../../widgets/app_text.dart';

class NewAdresses extends StatelessWidget {
  const NewAdresses({super.key});

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            GetBuilder<MyBookingController>(
                init: MyBookingController(),
                builder: (controller) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 100,
                            width: double.infinity,
                            decoration:
                                const BoxDecoration(color: Color(0xffFDF5EF)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        controller.changeIndex(0);
                                      },
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              SvgPicture.string(
                                                AppSvgs.homeadresses,
                                                color:
                                                    controller.selectedIndex ==
                                                            0
                                                        ? AppColors.primaryColor
                                                        : const Color(
                                                            0xffC4C4C4,
                                                          ),
                                              ),
                                              const SizedBox(
                                                width: 7,
                                              ),
                                              AppText(
                                                text: "Home",
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color:
                                                    controller.selectedIndex ==
                                                            0
                                                        ? AppColors.primaryColor
                                                        : const Color(
                                                            0xffC4C4C4,
                                                          ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    SvgPicture.string(AppSvgs.line),
                                    InkWell(
                                      onTap: () {
                                        controller.changeIndex(1);
                                      },
                                      child: Column(
                                        children: [
                                          Center(
                                            child: Row(
                                              children: [
                                                SvgPicture.string(
                                                  AppSvgs.officeadresses,
                                                  color: controller
                                                              .selectedIndex ==
                                                          1
                                                      ? AppColors.primaryColor
                                                      : const Color(
                                                          0xffC4C4C4,
                                                        ),
                                                ),
                                                const SizedBox(
                                                  width: 7,
                                                ),
                                                AppText(
                                                  text: "Office",
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: controller
                                                              .selectedIndex ==
                                                          1
                                                      ? AppColors.primaryColor
                                                      : const Color(
                                                          0xffC4C4C4,
                                                        ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SvgPicture.string(AppSvgs.line),
                                    InkWell(
                                      onTap: () {
                                        controller.changeIndex(2);
                                      },
                                      child: Column(
                                        children: [
                                          Center(
                                            child: Row(
                                              children: [
                                                SvgPicture.string(
                                                  AppSvgs.otheradress,
                                                  color: controller
                                                              .selectedIndex ==
                                                          2
                                                      ? AppColors.primaryColor
                                                      : const Color(
                                                          0xffC4C4C4,
                                                        ),
                                                ),
                                                const SizedBox(
                                                  width: 7,
                                                ),
                                                AppText(
                                                  text: "Others",
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400,
                                                  color: controller
                                                              .selectedIndex ==
                                                          2
                                                      ? AppColors.primaryColor
                                                      : const Color(
                                                          0xffC4C4C4,
                                                        ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      AppSpacing.heightSpace20,
                      controller.selectedIndex == 0
                          ? const HomeAdress()
                          : const OfficeAdress(),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
