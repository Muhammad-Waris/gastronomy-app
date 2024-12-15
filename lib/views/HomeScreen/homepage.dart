import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gastronomy_app/constants/app_colors.dart';
import 'package:gastronomy_app/constants/app_spacing.dart';
import 'package:gastronomy_app/constants/app_svgs.dart';
import 'package:gastronomy_app/utils/app_navigations.dart';
import 'package:gastronomy_app/views/HomeScreen/restaurant_details.dart';
import 'package:gastronomy_app/widgets/app_button.dart';
import 'package:gastronomy_app/widgets/app_form_field.dart';
import 'package:gastronomy_app/widgets/app_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quds_popup_menu/quds_popup_menu.dart';

import '../../controllers/homepage_controller/homepage_controller.dart';
import '../../widgets/custom_switch.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ColoredBox(
          color: const Color(0xffFFFFFF),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 26),
                    child: Container(
                      height: 333,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xffFDF5EF),
                      ),
                      child: Padding(
                        padding: AppSpacing.defaultPaddingAll,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/images/name_logo.png",
                              height: 90,
                              width: 90,
                            ),
                            const AppText(
                              text: "Hi, \nenjoy ordering !",
                              color: Color(0xff000000),
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              textAlign: TextAlign.start,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/images/coming_soon.png",
                                    height: 90,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Center(
                                          child:
                                              SvgPicture.string(AppSvgs.bikea),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const AppText(
                                        text: "Delievery",
                                        color: Color(0xff7B7B7B),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22, right: 22),
                    child: PopupMenuButton(
                      color: Colors.white,
                      position: PopupMenuPosition.under,
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            enabled: false,
                            child: Center(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.88,
                                child: Column(
                                  children: [
                                    AppFormField(
                                      hintText: "Address",
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child:
                                            SvgPicture.string(AppSvgs.address),
                                      ),
                                      onTap: () {},
                                    ),
                                    AppSpacing.heightSpace10,
                                    AppFormField(
                                      hintText: "Restaurant",
                                      prefixIcon: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: SvgPicture.string(
                                            AppSvgs.restaurant),
                                      ),
                                      onTap: () {},
                                    ),
                                    AppSpacing.heightSpace20,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                                height: 55,
                                                width: 55,
                                                decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xffF9F9FB),
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: AppColors
                                                          .primaryColor,
                                                    )),
                                                child: Center(
                                                  child: SvgPicture.string(
                                                      AppSvgs.menushowAll),
                                                )),
                                            const AppText(
                                              text: "Show All",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.primaryColor,
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              height: 55,
                                              width: 55,
                                              decoration: const BoxDecoration(
                                                color: Color(0xffF9F9FB),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: SvgPicture.asset(
                                                    "assets/icons/pizza.svg"),
                                              ),
                                            ),
                                            const AppText(
                                              text: "Pizza",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff9E9E9E),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              height: 55,
                                              width: 55,
                                              decoration: const BoxDecoration(
                                                color: Color(0xffF9F9FB),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: SvgPicture.asset(
                                                    "assets/icons/sandwich.svg"),
                                              ),
                                            ),
                                            const AppText(
                                              text: "Sandwich",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff9E9E9E),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              height: 55,
                                              width: 55,
                                              decoration: const BoxDecoration(
                                                color: Color(0xffF9F9FB),
                                                shape: BoxShape.circle,
                                              ),
                                              child: Center(
                                                child: SvgPicture.asset(
                                                    "assets/icons/fries.svg"),
                                              ),
                                            ),
                                            const AppText(
                                              text: "Fries",
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff9E9E9E),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    AppSpacing.heightSpace20,
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.60,
                                      height: 44,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black
                                                  .withOpacity(0.15),
                                              offset: const Offset(0, 0),
                                              spreadRadius: 0,
                                              blurRadius: 4,
                                            ),
                                          ]),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 12, right: 12),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const AppText(
                                              text: "Pick Up",
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff8D8D8D),
                                            ),
                                            SvgPicture.string(
                                                AppSvgs.blackDivider),
                                            const AppText(
                                              text: "Delievery",
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xff8D8D8D),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    AppSpacing.heightSpace30,
                                    AppButton(
                                      text: "",
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Spacer(),
                                          const AppText(
                                            text: "Search",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                          const Spacer(),
                                          InkWell(
                                            onTap: () {},
                                            child: Container(
                                              height: 30,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.08,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: const Center(
                                                child: Icon(
                                                  Icons.arrow_forward_outlined,
                                                  color: AppColors.primaryColor,
                                                  size: 18,
                                                ),
                                              ),
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
                        ];
                      },
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  AppText(
                                    text: "Advanced Search",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFAFAFA),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: SvgPicture.string(
                                  AppSvgs.arrowup,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: AppSpacing.defaultPaddingAll,
                child: Column(
                  children: [
                    AppSpacing.heightSpace30,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const AppText(
                              text: "All Restaurant",
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                            Row(
                              children: const [
                                AppText(
                                  text: "1 ",
                                  fontSize: 12,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w400,
                                ),
                                AppText(
                                  text: "Result",
                                  fontSize: 12,
                                  color: Color(0xff7B7B7B),
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            )
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                builder: (builder) {
                                  return ColoredBox(
                                    color: Colors.transparent,
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.25,
                                      decoration: const BoxDecoration(
                                        color: Color(0xffFFFFFF),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(22),
                                          topRight: Radius.circular(22),
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 65,
                                            width: double.infinity,
                                            decoration: const BoxDecoration(
                                              color: Color(0xffFDF5EF),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(22),
                                                topRight: Radius.circular(22),
                                              ),
                                            ),
                                            child: const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15, right: 15),
                                              child: Center(
                                                child: AppText(
                                                  text: "Sort By",
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.redAccent,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                AppSpacing.defaultPaddingAll,
                                            child: InkWell(
                                              onTap: () {},
                                              child: Row(
                                                children: const [
                                                  AppText(
                                                    text: "A-Z",
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20, top: 8),
                                            child: InkWell(
                                              onTap: () {},
                                              child: Row(
                                                children: const [
                                                  AppText(
                                                    text: "Z-A",
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
                          child: Container(
                            height: 38,
                            width: MediaQuery.of(context).size.width * 0.27,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: const Color(0xffEBEBEB),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const AppText(
                                  text: "Sort",
                                  color: AppColors.secondaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                                SvgPicture.string(AppSvgs.menu),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              GetBuilder<HomePageController>(
                  init: HomePageController(),
                  builder: (_) {
                    return Container(
                      width: double.infinity,
                      height: 80,
                      decoration: const BoxDecoration(
                        color: Color(0xffFDF5EF),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Center(
                                child: Row(
                                  children: [
                                    CustomSwitch(
                                      onChangedMethod: (value) {
                                        _.changeVlue(value);
                                      },
                                      val: _.isSelected,
                                    ),
                                    const AppText(
                                      text: "Booking System",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                                height: double.infinity,
                                width: 4,
                                child: SvgPicture.string(AppSvgs.line)),
                            Expanded(
                                child: Center(
                              child: Row(
                                children: [
                                  CustomSwitch(
                                    onChangedMethod: (value) {
                                      _.changeVlue2(value);
                                    },
                                    val: _.isSelected2,
                                  ),
                                  const AppText(
                                    text: "Discounts",
                                    color: Color(0xff878B96),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  )
                                ],
                              ),
                            )),
                          ],
                        ),
                      ),
                    );
                  }),
              AppSpacing.heightSpace10,
              Padding(
                padding: AppSpacing.defaultPaddingAll,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const AppText(
                              text: "All",
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor,
                            ),
                            Container(
                              height: 2,
                              width: MediaQuery.of(context).size.width * 0.15,
                              decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(3)),
                            )
                          ],
                        ),
                        const AppText(
                          text: "New",
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff9E9E9E),
                        ),
                        const AppText(
                          text: "Recommended",
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff9E9E9E),
                        ),
                        const AppText(
                          text: "Top Rated",
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff9E9E9E),
                        ),
                      ],
                    ),
                    AppSpacing.heightSpace30,
                    HomePageWdiget(
                      text: 'Chicken Pizza',
                      cat1: 'Pizza',
                      cat2: 'Burger',
                      cat3: 'Pasta',
                      cat4: 'Snacks',
                      cat5: 'Desert',
                      ontap: () {
                        AppNavigations.to(context,
                            nextScreen: const RestaurantDetails());
                      },
                    ),
                    AppSpacing.heightSpace30,
                    HomePageWdiget(
                      text: 'Chicken Buzz',
                      cat1: 'Pizza',
                      cat2: 'Pasta',
                      cat3: 'Burger',
                      cat4: 'Asian',
                      cat5: 'Indian',
                      ontap: () {
                        AppNavigations.to(context,
                            nextScreen: const RestaurantDetails());
                      },
                    ),
                    AppSpacing.heightSpace30,
                    HomePageWdiget(
                      text: 'Vegans',
                      cat1: 'Vegan',
                      cat2: 'Salad',
                      cat3: 'Soups',
                      cat4: 'Italian',
                      cat5: 'veggie',
                      ontap: () {
                        AppNavigations.to(context,
                            nextScreen: const RestaurantDetails());
                      },
                    ),
                    AppSpacing.heightSpace30,
                    AppSpacing.heightSpace30,
                    AppSpacing.heightSpace30,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomePageWdiget extends StatelessWidget {
  String text, cat1, cat2, cat3, cat4, cat5;
  void Function()? ontap;
  HomePageWdiget(
      {super.key,
      required this.text,
      required this.cat1,
      required this.cat2,
      required this.cat3,
      required this.cat4,
      required this.cat5,
      this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 460,
        decoration: const BoxDecoration(color: Color(0xffF9F9FB)),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/bg.png"),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 52,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.white)),
                            child: const Center(
                              child: AppText(
                                text: "%",
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 45,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.favorite,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          )
                        ],
                      ),
                      AppSpacing.heightSpace40,
                      AppSpacing.heightSpace40,
                      AppSpacing.heightSpace10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 33,
                            width: 33,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                          ),
                          Container(
                            height: 33,
                            width: 33,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  text: text,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff455A64),
                ),
                const AppText(
                  text: "€€€€",
                  fontSize: 20,
                  color: Color(0xff455A64),
                  fontWeight: FontWeight.w600,
                )
              ],
            ),
            Row(
              children: [
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
                RichText(
                    text: TextSpan(
                        text: "(",
                        style: GoogleFonts.poppins(
                          color: const Color(0xffA4A5A7),
                          fontSize: 12,
                        ),
                        children: [
                      TextSpan(
                        text: "4.9 ",
                        style: GoogleFonts.poppins(
                          color: const Color(0xffFCBA63),
                          fontSize: 12,
                        ),
                      ),
                      TextSpan(
                        text: "| 21) Ratings",
                        style: GoogleFonts.poppins(
                          color: const Color(0xffA4A5A7),
                          fontSize: 12,
                        ),
                      )
                    ]))
              ],
            ),
            AppSpacing.heightSpace10,
            Row(
              children: [
                SvgPicture.string(AppSvgs.location),
                const SizedBox(
                  width: 4,
                ),
                const AppText(
                  text: "Wilmersdorfer Straße 123, 10627 Berlin,",
                  fontWeight: FontWeight.w400,
                  color: Color(0xffA4A5A7),
                )
              ],
            ),
            AppSpacing.heightSpace10,
            Row(
              children: [
                SvgPicture.string(AppSvgs.spoon),
                const SizedBox(
                  width: 4,
                ),
                const AppText(
                  text: "Gastronomy",
                  fontWeight: FontWeight.w400,
                  color: AppColors.primaryColor,
                )
              ],
            ),
            AppSpacing.heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.string(AppSvgs.clock),
                    const SizedBox(
                      width: 5,
                    ),
                    const AppText(
                      text: "25 - 30 min",
                      color: Color(0xff263238),
                    )
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.string(AppSvgs.cart),
                    const SizedBox(
                      width: 5,
                    ),
                    const AppText(
                      text: "20.00 €",
                      color: Color(0xff263238),
                    )
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.string(AppSvgs.deleivery),
                    const SizedBox(
                      width: 5,
                    ),
                    const AppText(
                      text: "2.00 €",
                      color: Color(0xff263238),
                    )
                  ],
                ),
              ],
            ),
            AppSpacing.heightSpace10,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width * 0.19,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: AppText(
                        text: cat1,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8D8D8D),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 11,
                  ),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width * 0.19,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: AppText(
                        text: cat2,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8D8D8D),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 11,
                  ),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width * 0.19,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: AppText(
                        text: cat3,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8D8D8D),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 11,
                  ),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width * 0.19,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: AppText(
                        text: cat4,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8D8D8D),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 11,
                  ),
                  Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width * 0.19,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: AppText(
                        text: cat5,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8D8D8D),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 11,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
