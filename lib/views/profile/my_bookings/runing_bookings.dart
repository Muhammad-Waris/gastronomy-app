import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gastronomy_app/constants/app_colors.dart';
import 'package:gastronomy_app/constants/app_svgs.dart';
import 'package:gastronomy_app/views/profile/my_bookings/pending_bookings.dart';
import 'package:gastronomy_app/widgets/app_button.dart';
import '../../../constants/app_spacing.dart';
import '../../../widgets/app_text.dart';

class RuningBooking extends StatelessWidget {
  const RuningBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.defaultPaddingAll,
      child: Column(
        children: [
          BookingWidget(
            img: "assets/images/food3.png",
            countertext: '2',
            buttontext: 'Track',
            ontap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  backgroundColor: Colors.transparent,
                  builder: (builder) {
                    return const TrackPendingWidget();
                  });
            },
          ),
          AppSpacing.heightSpace30,
          BookingWidget(
            img: "assets/images/food2.png",
            countertext: '1',
            buttontext: 'Track',
          ),
          AppSpacing.heightSpace30,
        ],
      ),
    );
  }
}

class TrackPendingWidget extends StatelessWidget {
  const TrackPendingWidget({
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
              Image.asset("assets/images/foodbg1.png"),
              Padding(
                padding: AppSpacing.defaultPaddingAll,
                child: Column(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 8, top: 12),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.end,
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
                          color: const Color(0xffFAFAFA)
                              .withOpacity(0.5),
                          borderRadius:
                              BorderRadius.circular(12),
                          border: Border.all(
                            color: AppColors.primaryColor,
                          )),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment:
                                MainAxisAlignment.center,
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
                            mainAxisAlignment:
                                MainAxisAlignment.center,
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
                  padding: const EdgeInsets.only(
                      left: 13, right: 13),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: const [
                          AppText(
                            text: "Chicken Pizza",
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          AppText(
                            text: "12.00€",
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor,
                          ),
                        ],
                      ),
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
                  padding: const EdgeInsets.only(
                      left: 13, right: 13),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: const [
                              AppText(
                                text: "Track Your Order",
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                              AppText(
                                text: "Order Status",
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff455A64),
                              ),
                            ],
                          ),
                          AppButton(
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
                        mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
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
                                        color: const Color(
                                            0xff9E9E9E))),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              OrderWidget(
                                subtitle: "12:30 AM",
                                svg:
                                    "assets/icons/order_placed.svg",
                                title: "Order Placed",
                              ),
                              AppSpacing.heightSpace10,
                              OrderWidget(
                                subtitle:
                                    "Your oder has been confirmed.",
                                svg:
                                    "assets/icons/order_placed.svg",
                                title: "Order Confirmed",
                              ),
                              AppSpacing.heightSpace10,
                              OrderWidget(
                                subtitle:
                                    "We are preparing your order.",
                                svg:
                                    "assets/icons/order_placed.svg",
                                title: "Order Processed",
                              ),
                              AppSpacing.heightSpace10,
                              Container(
                                height: 65,
                                width: MediaQuery.of(context)
                                        .size
                                        .width *
                                    0.77,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(10),
                                  color:
                                      const Color(0xffF9F9FB),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(
                                              left: 12),
                                      child: Container(
                                        height: 50,
                                        width: MediaQuery.of(
                                                    context)
                                                .size
                                                .width *
                                            0.16,
                                        decoration:
                                            BoxDecoration(
                                          color: const Color(
                                              0xffDADADA),
                                          borderRadius:
                                              BorderRadius
                                                  .circular(8),
                                        ),
                                        child: Center(
                                          child: SvgPicture.asset(
                                              "assets/icons/order_delivered.svg"),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(
                                              left: 12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment
                                                .start,
                                        mainAxisAlignment:
                                            MainAxisAlignment
                                                .center,
                                        children: const [
                                          AppText(
                                            text:
                                                "Order Delievered",
                                            color: Colors.black,
                                            fontSize: 12,
                                            fontWeight:
                                                FontWeight.w400,
                                          ),
                                          AppText(
                                            text:
                                                "Your order will be deliver at 01:30 AM",
                                            fontSize: 10,
                                            fontWeight:
                                                FontWeight.w400,
                                            color: Color(
                                                0xff7B7E86),
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

class LineCon extends StatelessWidget {
  LineCon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 22,
          width: 22,
          decoration: const BoxDecoration(
            color: AppColors.primaryColor,
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 13,
            ),
          ),
        ),
        Container(
          height: 50,
          width: 1,
          decoration: const BoxDecoration(
            color: AppColors.primaryColor,
          ),
        )
      ],
    );
  }
}

class OrderWidget extends StatelessWidget {
  String svg, title, subtitle;
  OrderWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.svg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: MediaQuery.of(context).size.width * 0.77,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffFDF5EF),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.16,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: SvgPicture.asset(svg),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                  text: title,
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                AppText(
                  text: subtitle,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff7B7E86),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
