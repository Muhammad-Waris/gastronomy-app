import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gastronomy_app/constants/app_spacing.dart';
import 'package:gastronomy_app/utils/app_navigations.dart';
import 'package:gastronomy_app/widgets/app_button.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_svgs.dart';
import '../../../widgets/app_text.dart';
import 'new_adresses.dart';

class MyAdresses extends StatelessWidget {
  const MyAdresses({super.key});

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
        child: Padding(
          padding: AppSpacing.defaultPaddingAll,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffFDF5EF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Container(
                              height: 55,
                              width: MediaQuery.of(context).size.width * 0.15,
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: SvgPicture.string(AppSvgs.location2),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const AppText(
                                    text: "Home address",
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.42,
                                    child: const AppText(
                                      text:
                                          "Andsberger Allle 65 im andel’s Hotel Berlin, 12369 Berlin",
                                      color: Color(0xff7B7E86),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: AppColors.primaryColor, width: 5)),
                  )
                ],
              ),
              AppSpacing.heightSpace20,
              Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffFDF5EF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Row(
                          children: [
                            Container(
                              height: 55,
                              width: MediaQuery.of(context).size.width * 0.15,
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: SvgPicture.string(AppSvgs.location2),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const AppText(
                                    text: "Home address",
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.42,
                                    child: const AppText(
                                      text:
                                          "Andsberger Allle 65 im andel’s Hotel Berlin, 12369 Berlin",
                                      color: Color(0xff7B7E86),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: const Color(0xff9E9E9E), width: 2)),
                  ),
                ],
              ),
              AppSpacing.heightSpace10,
              Image.asset(
                "assets/images/map1.png",
              ),
              AppSpacing.heightSpace20,
              AppButton(
                text: "Add New Addresses",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                height: 50,
                textColor: Colors.white,
                onTap: () {
                  AppNavigations.to(context, nextScreen: const NewAdresses());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
