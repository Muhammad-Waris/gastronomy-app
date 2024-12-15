import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gastronomy_app/constants/app_spacing.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_svgs.dart';
import '../../../widgets/app_button.dart';
import '../../../widgets/app_text.dart';

class CompleteBooking extends StatelessWidget {
  const CompleteBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.defaultPaddingAll,
      child: Column(
        children: [
          CompletedWidget(
            countertext: '2',
            img: 'assets/images/food2.png',
            buttontext: 'Book Again',
          ),
          AppSpacing.heightSpace30,
          CompletedWidget(
            countertext: '',
            img: 'assets/images/food2.png',
            buttontext: 'Book Again',
          ),
        ],
      ),
    );
  }
}

class CompletedWidget extends StatelessWidget {
  String img, countertext, buttontext;
  CompletedWidget({
    super.key,
    required this.countertext,
    required this.img,
    required this.buttontext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 530,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffDADADA),
        ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(0.20),
            offset: const Offset(0, 3),
            blurRadius: 20,
            spreadRadius: -8,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 25,
                width: MediaQuery.of(context).size.width * 0.12,
                decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(30))),
                child: Center(
                  child: AppText(
                    text: countertext,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(img),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      AppText(
                        text: "Booking ID:",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff9E9E9E),
                      ),
                      AppText(
                        text: " 12345678",
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                      ),
                    ],
                  ),
                  const AppText(
                    text: "Chicken Salad",
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: const AppText(
                      textAlign: TextAlign.start,
                      text: "Cheese, canned black beans",
                      color: Color(0xff9E9E9E),
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              )
            ],
          ),
          AppSpacing.heightSpace20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.string(
                    AppSvgs.delivered,
                    height: 25,
                    width: 25,
                  ),
                  const AppText(
                    text: "Delivered",
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7B7E86),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  AppText(
                    text: "Cancel",
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7B7E86),
                  ),
                  AppText(
                    text: "30.00 €",
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),
                ],
              ),
              AppButton(
                text: buttontext,
                textColor: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                width: MediaQuery.of(context).size.width * 0.28,
                onTap: () {},
              ),
            ],
          ),
          Padding(
            padding: AppSpacing.defaultPaddingAll,
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffF9F9FB),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Row(
                      children: [
                        Image.asset("assets/images/restaurant1.png"),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              AppText(
                                text: "Restaurant name",
                                color: Color(0xff7B7E86),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                              ),
                              AppText(
                                text: "SkyKitchen",
                                color: AppColors.primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                AppSpacing.heightSpace20,
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffFDF5EF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22),
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
                                text: "Delivery address",
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.42,
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
                AppSpacing.heightSpace30,
                AppButton(
                  text: "Share Your Review",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  textColor: Colors.white,
                  onTap: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
