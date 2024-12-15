import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gastronomy_app/constants/app_colors.dart';
import 'package:gastronomy_app/constants/app_spacing.dart';
import 'package:gastronomy_app/constants/app_svgs.dart';
import 'package:gastronomy_app/views/profile/my_bookings/runing_bookings.dart';
import 'package:gastronomy_app/widgets/app_button.dart';
import 'package:gastronomy_app/widgets/app_text.dart';

class PendingBooking extends StatelessWidget {
  const PendingBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.defaultPaddingAll,
      child: Column(
        children: [
          BookingWidget(
            img: "assets/images/food1.png",
            countertext: '2',
            buttontext: 'Cancel',
            ontapContainer: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  backgroundColor: Colors.transparent,
                  builder: (builder) {
                    return Categoryontap();
                  });
            },
          ),
          AppSpacing.heightSpace30,
          BookingWidget(
            img: "assets/images/food2.png",
            countertext: '1',
            buttontext: 'Book Again',
          ),
          AppSpacing.heightSpace30,
        ],
      ),
    );
  }
}

class Categoryontap extends StatelessWidget {
  const Categoryontap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.90,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "assets/images/foodbg1.png",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: AppSpacing.defaultPaddingAll,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8, top: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 33,
                              width: 33,
                              decoration: const BoxDecoration(
                                color: Color(0xffCACACA),
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.close,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xffFAFAFA).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: AppColors.primaryColor,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              AppText(
                                text: "Distance",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              AppText(
                                text: "3 km",
                                color: AppColors.primaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              AppText(
                                text: "Your food is",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              AppText(
                                text: "18 Min",
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primaryColor,
                              ),
                              AppText(
                                text: "away",
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13, right: 13),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            text: "12.00€",
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor,
                          ),
                        ],
                      ),
                      const AppText(
                        text: "Chicken Pizza",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: double.infinity,
                  child: Divider(
                    color: Color(0xff9E9E9E),
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 13, right: 13),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              AppText(
                                text: "Track Your Order",
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              AppText(
                                text: "Order Status",
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff455A64),
                              ),
                            ],
                          ),
                          AppButton(
                            height: 39,
                            text: "",
                            child: Row(
                              children: [
                                SvgPicture.string(
                                  AppSvgs.livetracking,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const AppText(
                                  text: "Live Tracking",
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      AppSpacing.heightSpace30,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              LineCon(),
                              LineCon(),
                              LineCon(),
                              Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: const Color(0xff9E9E9E))),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              OrderWidget(
                                subtitle: "12:30 AM",
                                svg: "assets/icons/order_placed.svg",
                                title: "Order Placed",
                              ),
                              AppSpacing.heightSpace10,
                              OrderWidget(
                                subtitle: "Your oder has been confirmed.",
                                svg: "assets/icons/order_placed.svg",
                                title: "Order Confirmed",
                              ),
                              AppSpacing.heightSpace10,
                              OrderWidget(
                                subtitle: "We are preparing your order.",
                                svg: "assets/icons/order_placed.svg",
                                title: "Order Processed",
                              ),
                              AppSpacing.heightSpace10,
                              Container(
                                height: 65,
                                width: MediaQuery.of(context).size.width * 0.77,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffF9F9FB),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Container(
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.16,
                                        decoration: BoxDecoration(
                                          color: const Color(0xffDADADA),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Center(
                                          child: SvgPicture.asset(
                                              "assets/icons/order_delivered.svg"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          AppText(
                                            text: "Order Delievered",
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          AppText(
                                            text:
                                                "Your order will be deliver at 01:30 AM",
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff7B7E86),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BookingWidget extends StatelessWidget {
  String img, countertext, buttontext;
  void Function()? ontap, ontapContainer;
  BookingWidget({
    super.key,
    required this.img,
    required this.countertext,
    required this.buttontext,
    this.ontap,
    this.ontapContainer,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontapContainer,
      child: Container(
        height: 450,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    AppText(
                      text: "Delivery Time",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7B7E86),
                    ),
                    AppText(
                      text: "45 min",
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff263238),
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
                    onTap: ontap),
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.42,
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
