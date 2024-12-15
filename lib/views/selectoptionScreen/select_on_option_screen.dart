import 'package:flutter/material.dart';
import 'package:gastronomy_app/constants/app_colors.dart';
import 'package:gastronomy_app/constants/app_spacing.dart';
import 'package:gastronomy_app/utils/app_navigations.dart';
import 'package:gastronomy_app/widgets/app_text.dart';
import 'package:gastronomy_app/widgets/main_Page.dart';
import 'package:get/get.dart';
import '../../controllers/select_one/select_one.dart';
import '../bottom_nav_bar/bottom_nav_bar.dart';

class SelectOneOptionScreen extends StatelessWidget {
  const SelectOneOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Image.asset(
          "assets/images/name_logo.png",
          height: 90,
          width: 90,
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppColors.backgroundColor,
      ),
      body: SingleChildScrollView(
        child: GetBuilder<SelectOneController>(
            init: SelectOneController(),
            builder: (controller) {
              return Column(
                children: [
                  const Center(
                    child: AppText(
                      text: "Choose your area",
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: AppSpacing.defaultPaddingAll,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: controller.isSelected
                              ? InkWell(
                                  onTap: () {
                                    AppNavigations.to(context,
                                        nextScreen: MainScreen());
                                  },
                                  child: Stack(
                                    alignment:
                                        AlignmentDirectional.bottomCenter,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 11),
                                        child: Container(
                                          alignment: Alignment.topCenter,
                                          height: 150,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: const Color(0xffF9F9FB),
                                              border: Border.all(
                                                color: const Color(0xffDADADA),
                                              )),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              AppSpacing.heightSpace10,
                                              Expanded(
                                                  child: Center(
                                                      child: Image.asset(
                                                          "assets/images/choose_one.png"))),
                                              const Expanded(
                                                  child: Center(
                                                child: AppText(
                                                  text: "Gastronomy",
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color(0xff7B7B7B),
                                                ),
                                              ))
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 22,
                                        width: 22,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color:
                                                    const Color(0xff7B7B7B))),
                                      )
                                    ],
                                  ),
                                )
                              : Container(
                                  height: 70,
                                  width: 120,
                                  color: Colors.red,
                                ),
                        ),
                        AppSpacing.heightSpace20,
                        ChhoseOne(
                          img: "assets/images/choose_one2.png",
                          text: "Coming Soon!",
                        ),
                        AppSpacing.heightSpace20,
                        ChhoseOne(
                          img: "assets/images/choose_one3.png",
                          text: "Coming Soon!",
                        ),
                        AppSpacing.heightSpace20,
                        ChhoseOne(
                          img: "assets/images/choose_one4.png",
                          text: "Coming Soon!",
                        ),
                      ],
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}

class ChhoseOne extends StatelessWidget {
  String img, text;
  ChhoseOne({
    super.key,
    required this.img,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 11),
          child: Container(
            alignment: Alignment.topCenter,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffF9F9FB),
                border: Border.all(
                  color: const Color(0xffDADADA),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppSpacing.heightSpace10,
                Expanded(child: Center(child: Image.asset(img))),
                Expanded(
                    child: Center(
                  child: AppText(
                    text: text,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffDADADA),
                  ),
                ))
              ],
            ),
          ),
        ),
        Container(
          height: 22,
          width: 22,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xff7B7B7B))),
        )
      ],
    );
  }
}
