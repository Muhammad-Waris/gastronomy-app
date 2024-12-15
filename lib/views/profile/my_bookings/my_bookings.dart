import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gastronomy_app/constants/app_colors.dart';
import 'package:gastronomy_app/constants/app_svgs.dart';
import 'package:gastronomy_app/controllers/profile_controllers/my_booking_controller/my_booking_controller.dart';
import 'package:gastronomy_app/views/profile/my_bookings/cancelled_booking.dart';
import 'package:gastronomy_app/views/profile/my_bookings/completed_bookings.dart';
import 'package:gastronomy_app/views/profile/my_bookings/pending_bookings.dart';
import 'package:gastronomy_app/views/profile/my_bookings/runing_bookings.dart';
import 'package:gastronomy_app/widgets/app_text.dart';
import 'package:get/get.dart';

import '../../../constants/app_spacing.dart';

class MyBooking extends StatelessWidget {
  const MyBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 4),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff000000).withOpacity(0.30),
                      offset: const Offset(0, 3),
                      blurRadius: 20,
                      spreadRadius: -10,
                    ),
                  ]),
              child: Center(
                child: SvgPicture.string(AppSvgs.backbutton),
              ),
            ),
          ),
        ),
        title: const AppText(
          text: "My Bookings",
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color(0xff333333),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 4),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff000000).withOpacity(0.30),
                        offset: const Offset(0, 3),
                        blurRadius: 20,
                        spreadRadius: -10,
                      ),
                    ]),
                child: Center(
                  child: SvgPicture.string(AppSvgs.calendar),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12, top: 4),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff000000).withOpacity(0.30),
                        offset: const Offset(0, 3),
                        blurRadius: 20,
                        spreadRadius: -10,
                      ),
                    ]),
                child: Center(
                  child: SvgPicture.string(AppSvgs.filter),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 14),
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Color(0xffFDF5EF)),
                  child: Padding(
                    padding: AppSpacing.defaultPaddingAll,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
            AppSpacing.heightSpace30,
            GetBuilder<MyBookingController>(
                init: MyBookingController(),
                builder: (controller) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.changeIndex(0);
                            },
                            child: SizedBox(
                              height: 45,
                              child: Center(
                                child: AppText(
                                  color: controller.selectedIndex == 0
                                      ? AppColors.primaryColor
                                      : const Color(0xff9E9E9E),
                                  text: "Pending",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              controller.changeIndex(1);
                            },
                            child: SizedBox(
                              height: 45,
                              child: Center(
                                child: AppText(
                                  color: controller.selectedIndex == 1
                                      ? AppColors.primaryColor
                                      : const Color(0xff9E9E9E),
                                  text: "Runing",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              controller.changeIndex(2);
                            },
                            child: SizedBox(
                              height: 45,
                              child: Center(
                                child: AppText(
                                  color: controller.selectedIndex == 2
                                      ? AppColors.primaryColor
                                      : const Color(0xff9E9E9E),
                                  text: "Completed",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              controller.changeIndex(3);
                            },
                            child: SizedBox(
                              height: 45,
                              child: Center(
                                child: AppText(
                                  color: controller.selectedIndex == 3
                                      ? AppColors.primaryColor
                                      : const Color(0xff9E9E9E),
                                  text: "Cancelled",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            controller.selectedIndex == 0
                                ? Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.18,
                                      child: Divider(
                                        color: controller.selectedIndex == 0
                                            ? AppColors.primaryColor
                                            : const Color(0xff9E9E9E),
                                        height: 1,
                                        thickness: 2,
                                      ),
                                    ),
                                  )
                                : Container(),
                            controller.selectedIndex == 1
                                ? Padding(
                                    padding: const EdgeInsets.only(right: 28),
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.18,
                                      child: Divider(
                                        color: controller.selectedIndex == 1
                                            ? AppColors.primaryColor
                                            : const Color(0xff9E9E9E),
                                        height: 1,
                                        thickness: 2,
                                      ),
                                    ),
                                  )
                                : Container(),
                            controller.selectedIndex == 2
                                ? Padding(
                                    padding: const EdgeInsets.only(right: 25),
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.22,
                                      child: Divider(
                                        color: controller.selectedIndex == 2
                                            ? AppColors.primaryColor
                                            : const Color(0xff9E9E9E),
                                        height: 1,
                                        thickness: 2,
                                      ),
                                    ),
                                  )
                                : Container(),
                            controller.selectedIndex == 3
                                ? Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.22,
                                      child: Divider(
                                        color: controller.selectedIndex == 3
                                            ? AppColors.primaryColor
                                            : const Color(0xff9E9E9E),
                                        height: 1,
                                        thickness: 2,
                                      ),
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: double.infinity,
                        child: Divider(
                          color: Color(0xff9E9E9E),
                          height: 1,
                          thickness: 0.43,
                        ),
                      ),
                      AppSpacing.heightSpace20,
                      controller.selectedIndex == 0
                          ? const PendingBooking()
                          : controller.selectedIndex == 1
                              ?  RuningBooking()
                              : controller.selectedIndex == 2
                                  ? const CompleteBooking()
                                  : const CancelledBooking(),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
