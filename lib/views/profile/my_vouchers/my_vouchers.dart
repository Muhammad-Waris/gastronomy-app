import 'package:flutter/material.dart';
import 'package:gastronomy_app/views/profile/my_vouchers/active_vouchers.dart';
import 'package:gastronomy_app/views/profile/my_vouchers/used_vouchers.dart';
import 'package:gastronomy_app/widgets/app_text.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_spacing.dart';
import '../../../controllers/profile_controllers/my_booking_controller/my_booking_controller.dart';

class MyVouchers extends StatelessWidget {
  const MyVouchers({super.key});

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
          text: "My Vouchers",
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color(0xff333333),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView
      (
        child: GetBuilder<MyBookingController>(
            init: MyBookingController(),
            builder: (controller) {
              return Padding(
                padding: AppSpacing.defaultPaddingAll,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            controller.changeIndex(0);
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                height: 45,
                                child: Center(
                                  child: AppText(
                                    color: controller.selectedIndex == 0
                                        ? AppColors.primaryColor
                                        : const Color(0xff9E9E9E),
                                    text: "Active",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width * 0.443,
                                height: 2,
                                decoration: BoxDecoration(
                                  color: controller.selectedIndex == 0
                                      ? AppColors.primaryColor
                                      : const Color(0xff9E9E9E),
                                ),
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            controller.changeIndex(1);
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                height: 45,
                                child: Center(
                                  child: AppText(
                                    color: controller.selectedIndex == 1
                                        ? AppColors.primaryColor
                                        : const Color(0xff9E9E9E),
                                    text: "Used",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width * 0.443,
                                height: 2,
                                decoration: BoxDecoration(
                                  color: controller.selectedIndex == 1
                                      ? AppColors.primaryColor
                                      : const Color(0xff9E9E9E),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.heightSpace20,
                    controller.selectedIndex == 0
                        ? const ActiveVouchers()
                        : const UsedVouchers(),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
