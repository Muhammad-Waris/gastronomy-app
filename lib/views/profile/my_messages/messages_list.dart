import 'package:flutter/material.dart';
import 'package:gastronomy_app/constants/app_colors.dart';
import 'package:gastronomy_app/constants/app_spacing.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../controllers/profile_controllers/mymessages_controller/messages_controller.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_text.dart';
import 'cosmetics_messages.dart';
import 'gastronomie_messages.dart';

class MessagesList extends StatelessWidget {
  const MessagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(11.5),
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
                      color: const Color(0xff000000).withOpacity(0.10),
                      offset: const Offset(1, 7),
                      blurRadius: 3,
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(14.5),
            child: Center(
              child: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  color: Color(0xffFFFFFF),
                  size: 26,
                ),
              ),
            ),
          ),
        ],
      ),
      body: GetBuilder<MyMessagesController>(
          init: MyMessagesController(),
          builder: (controller) {
            return Column(
              children: [
                AppSpacing.heightSpace20,
                Container(
                  margin: const EdgeInsets.only(left: 18, right: 18),
                  height: 75,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffEBEBEB),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: AppButton(
                              borderColor: Colors.transparent,
                              textColor: controller.selectedIndex == 0
                                  ? Colors.white
                                  : Colors.white,
                              color: controller.selectedIndex == 0
                                  ? AppColors.primaryColor
                                  : Colors.transparent,
                              onTap: () {
                                controller.changeIndex(0);
                              },
                              borderRadius: 12,
                              height: 55,
                              text: "",
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  AppText(
                                    text: "Gastronime",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: controller.selectedIndex == 0
                                        ? const Color(0xffFFFFFF)
                                        : const Color(0xff455A64),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: controller.selectedIndex == 0
                                          ? Colors.white
                                          : const Color(0xff455A64),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: AppText(
                                        text: "2",
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: controller.selectedIndex == 0
                                            ? AppColors.primaryColor
                                            : const Color(0xffFFFFFF),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: AppButton(
                              borderColor: Colors.transparent,
                              textColor: controller.selectedIndex == 1
                                  ? const Color(0xffE0E0E0)
                                  : const Color(0xff858585),
                              color: controller.selectedIndex == 1
                                  ? AppColors.primaryColor
                                  : Colors.transparent,
                              onTap: () {
                                controller.changeIndex(1);
                              },
                              borderRadius: 12,
                              height: 55,
                              text: "",
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  AppText(
                                    text: "Cosmetics",
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: controller.selectedIndex == 1
                                        ? const Color(0xffFFFFFF)
                                        : const Color(0xff455A64),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: controller.selectedIndex == 1
                                          ? Colors.white
                                          : const Color(0xff455A64),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Center(
                                      child: AppText(
                                        text: "3",
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: controller.selectedIndex == 1
                                            ? AppColors.primaryColor
                                            : const Color(0xffFFFFFF),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                AppSpacing.heightSpace20,
                controller.selectedIndex == 0
                    ? const GastronomieMessages()
                    : const CosmeticsMessages(),
              ],
            );
          }),
    );
  }
}
