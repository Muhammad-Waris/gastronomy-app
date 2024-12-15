import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gastronomy_app/constants/app_colors.dart';
import 'package:gastronomy_app/constants/app_spacing.dart';
import 'package:gastronomy_app/constants/app_svgs.dart';
import 'package:gastronomy_app/widgets/app_text.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 170,
              width: double.infinity,
              decoration: const BoxDecoration(color: Color(0xffFDF5EF)),
              child: Padding(
                padding: AppSpacing.defaultPaddingAll,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppSpacing.heightSpace30,
                    Image.asset(
                      "assets/images/name_logo.png",
                      height: 30,
                      width: MediaQuery.of(context).size.width * 0.27,
                    ),
                    const AppText(
                      text: "Notifications",
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ],
                ),
              ),
            ),
            AppSpacing.heightSpace20,
            NotificationWidget(
              ctime: "09:00 AM",
              svg: AppSvgs.order,
              title: "Your Order was Confirmed",
              timebefore: '30 seconds ago',
              color: const Color(0xff10B01A),
            ),
            AppSpacing.heightSpace20,
            NotificationWidget(
              ctime: "10:00 PM",
              svg: AppSvgs.ordercancelled,
              title: "Order Cancelled",
              timebefore: '30 seconds ago',
              color: AppColors.primaryColor,
            ),
            AppSpacing.heightSpace20,
            NotificationWidget(
              ctime: "10:00 PM",
              svg: AppSvgs.personNot,
              title: "Customer Profile Request",
              timebefore: '30 seconds ago',
              color: const Color(0xffE38601),
            ),
            AppSpacing.heightSpace20,
            NotificationWidget(
              ctime: "10:00 PM",
              svg: AppSvgs.customerprofile,
              title: "Review Request",
              timebefore: '30 seconds ago',
              color: const Color(0xff2BABA1),
            ),
            AppSpacing.heightSpace30,
          ],
        ),
      ),
    );
  }
}

class NotificationWidget extends StatelessWidget {
  String title, timebefore, ctime, svg;
  Color color;
  NotificationWidget({
    super.key,
    required this.title,
    required this.timebefore,
    required this.ctime,
    required this.svg,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: double.infinity,
      decoration: const BoxDecoration(color: Color(0xffFAFAFA)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              height: 54,
              width: 47,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: color)),
              child: Center(
                child: SvgPicture.string(svg),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: title,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: const AppText(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing, sed do eiusmod tempor incididunt ut labore et.",
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff7B7B7B),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppText(
                          text: timebefore,
                          color: Color(0xff455A64),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                        AppText(
                          text: ctime,
                          color: Color(0xff455A64),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
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
