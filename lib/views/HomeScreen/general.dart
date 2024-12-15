import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gastronomy_app/constants/app_colors.dart';
import 'package:gastronomy_app/constants/app_spacing.dart';
import 'package:gastronomy_app/constants/app_svgs.dart';
import 'package:gastronomy_app/widgets/app_button.dart';
import 'package:gastronomy_app/widgets/app_text.dart';

class General extends StatelessWidget {
  const General({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 220,
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xffF9F9FB)),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppText(
                  text: "Description",
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: AppText(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    fontWeight: FontWeight.w400,
                    color: Color(0xff455A64),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width * 0.40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: AppColors.primaryColor,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      AppText(
                        text: "Read more",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primaryColor,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: AppColors.primaryColor,
                        weight: 8,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        AppSpacing.heightSpace10,
        Container(
          height: 220,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffF9F9FB),
          ),
          child: Padding(
            padding: AppSpacing.defaultPaddingAll,
            child: Column(
              children: [
                Row(
                  children: const [
                    AppText(
                      text: "Facilities",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ],
                ),
                AppSpacing.heightSpace10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Facilities(
                      bgColor: const Color(0xff007AFF).withOpacity(0.22),
                      catName: "For gentlemen",
                      svg: AppSvgs.gentlemen,
                    ),
                    Facilities(
                      bgColor: const Color(0xffFA7B86).withOpacity(0.22),
                      catName: "Only Ladies",
                      svg: AppSvgs.ladies,
                    ),
                  ],
                ),
                AppSpacing.heightSpace20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Facilities(
                      bgColor: const Color(0xffE38601).withOpacity(0.22),
                      catName: "Free Wifi",
                      svg: AppSvgs.wifi,
                    ),
                    Facilities(
                      bgColor: const Color(0xff2BABA1).withOpacity(0.22),
                      catName: "Pets Allowed",
                      svg: AppSvgs.pets,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        AppSpacing.heightSpace10,
        Container(
          height: 330,
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xffF9F9FB)),
          child: Padding(
            padding: AppSpacing.defaultPaddingAll,
            child: Column(
              children: [
                Row(
                  children: const [
                    AppText(
                      text: "Location by Map",
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                AppSpacing.heightSpace10,
                Image.asset("assets/images/map3.png")
              ],
            ),
          ),
        ),
        AppSpacing.heightSpace10,
        Container(
          height: 75,
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xffF9F9FB)),
          child: Center(
            child: Container(
              height: 51,
              width: MediaQuery.of(context).size.width * 0.88,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.10),
                      offset: const Offset(0, 4),
                      spreadRadius: 0,
                      blurRadius: 20,
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        AppText(
                          text: "District",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff455A64),
                        ),
                        AppText(
                          text: "Berlin",
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7B7B7B),
                        ),
                      ],
                    ),
                    Container(
                      height: 41,
                      width: MediaQuery.of(context).size.width * 0.12,
                      decoration: BoxDecoration(
                          color: const Color(0xffEC8984).withOpacity(0.20),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: SvgPicture.string(
                          AppSvgs.location,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        AppSpacing.heightSpace10,
        Container(
          height: 75,
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xffF9F9FB)),
          child: Center(
            child: Container(
              height: 51,
              width: MediaQuery.of(context).size.width * 0.88,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.10),
                      offset: const Offset(0, 4),
                      spreadRadius: 0,
                      blurRadius: 20,
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        AppText(
                          text: "Kitchen",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff455A64),
                        ),
                        AppText(
                          text: "Italian Pizza, Burger, Pasta",
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7B7B7B),
                        ),
                      ],
                    ),
                    Container(
                      height: 41,
                      width: MediaQuery.of(context).size.width * 0.12,
                      decoration: BoxDecoration(
                          color: const Color(0xff007AFF).withOpacity(0.20),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: SvgPicture.string(
                          AppSvgs.cooking,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        AppSpacing.heightSpace10,
        Container(
          height: 75,
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xffF9F9FB)),
          child: Center(
            child: Container(
              height: 51,
              width: MediaQuery.of(context).size.width * 0.88,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.10),
                      offset: const Offset(0, 4),
                      spreadRadius: 0,
                      blurRadius: 20,
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const AppText(
                      text: "Contact",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff455A64),
                    ),
                    AppButton(
                      text: "",
                      height: 45,
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.string(AppSvgs.phone),
                          const SizedBox(
                            width: 8,
                          ),
                          const AppText(
                            text: "Call Now",
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        AppSpacing.heightSpace10,
        Container(
          height: 400,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffF9F9FB),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TimeRow(
                  containerColor: Colors.white,
                  day: 'Monday',
                  time: "09:00 - 23:00",
                ),
                TimeRow(
                  containerColor: const Color(0xffF6F6F8),
                  day: 'Tuesday',
                  time: "09:00 - 23:00",
                ),
                TimeRow(
                  containerColor: Colors.white,
                  day: 'Wednesday',
                  time: "09:00 - 23:00",
                ),
                TimeRow(
                  containerColor: Colors.white,
                  day: 'Thursday',
                  time: "09:00 - 23:00",
                ),
                TimeRow(
                  containerColor: Colors.white,
                  day: 'Friday',
                  time: "09:00 - 23:00",
                ),
                TimeRow(
                  containerColor: Colors.white,
                  day: 'Saturday',
                  time: "09:00 - 23:00",
                ),
                TimeRow(
                  containerColor: Colors.white,
                  day: 'Sunday',
                  time: "09:00 - 23:00",
                ),
              ],
            ),
          ),
        ),
        AppSpacing.heightSpace10,
        Container(
          height: 250,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xffF9F9FB),
          ),
          child: Padding(
            padding: AppSpacing.defaultPaddingAll,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.10),
                      offset: const Offset(0, 4),
                      spreadRadius: 0,
                      blurRadius: 20,
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.string(AppSvgs.cart),
                              const SizedBox(
                                width: 8,
                              ),
                              const AppText(
                                text: "Minimum Order Value",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff455A64),
                              ),
                            ],
                          ),
                          const AppText(
                            text: "100",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff455A64),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.string(AppSvgs.deleivery),
                              const SizedBox(
                                width: 8,
                              ),
                              const AppText(
                                text: "Delivery Costs",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff455A64),
                              ),
                            ],
                          ),
                          const AppText(
                            text: "3.00 €",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff455A64),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.string(AppSvgs.clock),
                              const SizedBox(
                                width: 8,
                              ),
                              const AppText(
                                text: "Average Deleivery Time",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff455A64),
                              ),
                            ],
                          ),
                          const AppText(
                            text: "20 - 30 mins",
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff455A64),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        AppSpacing.heightSpace10,
        Container(
          height: 75,
          width: double.infinity,
          decoration: const BoxDecoration(color: Color(0xffF9F9FB)),
          child: Center(
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.88,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.10),
                      offset: const Offset(0, 4),
                      spreadRadius: 0,
                      blurRadius: 20,
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        AppText(
                          text: "Website",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff455A64),
                        ),
                        AppText(
                          text: "www.gastronomy.com",
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455A64),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.13,
                        decoration: BoxDecoration(
                          color: const Color(0xffEC8984).withOpacity(0.22),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: SvgPicture.string(AppSvgs.web),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TimeRow extends StatelessWidget {
  void Function()? ontap;
  Color containerColor;
  String day, time;
  TimeRow({
    super.key,
    this.ontap,
    required this.containerColor,
    required this.day,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: containerColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppText(
              text: day,
              fontWeight: FontWeight.w500,
              color: const Color(0xff455A64),
            ),
            AppText(
              text: time,
              fontWeight: FontWeight.w500,
              color: const Color(0xff455A64),
            ),
          ],
        ),
      ),
    );
  }
}

class Facilities extends StatelessWidget {
  String svg, catName;
  Color bgColor;
  Facilities({
    super.key,
    required this.catName,
    required this.bgColor,
    required this.svg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width * 0.43,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            width: 0.2,
            color: const Color(0xffDADADA),
          ),
          borderRadius: BorderRadius.circular(
            12,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.10),
              offset: const Offset(0, 4),
              spreadRadius: 0,
              blurRadius: 20,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: AppText(
              text: catName,
              color: const Color(0xff455A64),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 4),
            child: Container(
              height: 46,
              width: MediaQuery.of(context).size.width * 0.12,
              decoration: BoxDecoration(
                  color: bgColor, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: SvgPicture.string(svg),
              ),
            ),
          )
        ],
      ),
    );
  }
}
