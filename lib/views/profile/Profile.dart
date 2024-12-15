import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gastronomy_app/constants/app_colors.dart';
import 'package:gastronomy_app/constants/app_svgs.dart';
import 'package:gastronomy_app/utils/app_navigations.dart';
import 'package:gastronomy_app/views/profile/my_adresses/empty_adress.dart';
import 'package:gastronomy_app/views/profile/my_vouchers/my_vouchers.dart';
import 'package:gastronomy_app/widgets/app_text.dart';
import '../../constants/app_spacing.dart';
import 'my_bookings/my_bookings.dart';
import 'my_messages/messages_list.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 155,
              width: double.infinity,
              decoration: const BoxDecoration(color: Color(0xffFDF5EF)),
              child: Padding(
                padding: AppSpacing.defaultPaddingAll,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppSpacing.heightSpace30,
                        Image.asset(
                          "assets/images/name_logo.png",
                          height: 30,
                          width: MediaQuery.of(context).size.width * 0.27,
                        ),
                        const AppText(
                          text: "My Profile",
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 38,
                          width: 38,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 20,
                                  spreadRadius: -12,
                                )
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.string(AppSvgs.pencil),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 38,
                          width: 38,
                          decoration: const BoxDecoration(
                              color: AppColors.primaryColor,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 20,
                                  spreadRadius: -12,
                                )
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.string(AppSvgs.setting),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            AppSpacing.heightSpace20,
            Padding(
              padding: AppSpacing.defaultPaddingAll,
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xffFCBE56),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff000000).withOpacity(0.10),
                            offset: const Offset(0, 3),
                            blurRadius: 20,
                            spreadRadius: -12,
                          )
                        ]),
                    child: Center(
                      child: Row(
                        children: [
                          Image.asset("assets/images/photo.png"),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              AppText(
                                text: "John Doe",
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              AppText(
                                text: "johndoe@gmail.com",
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                              AppText(
                                text: "+92 373773332",
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  AppSpacing.heightSpace30,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfileWidget(
                        color: const Color(0xffE38601).withOpacity(0.10),
                        svg: AppSvgs.mybooking,
                        title: 'My Bookings',
                        ontap: () {
                          AppNavigations.to(context,
                              nextScreen: const MyBooking());
                        },
                      ),
                      ProfileWidget(
                        color: const Color(0xff10B01A).withOpacity(0.10),
                        svg: AppSvgs.message,
                        title: 'My Messages',
                        ontap: () {
                          AppNavigations.to(context,
                              nextScreen: const MessagesList());
                        },
                      ),
                    ],
                  ),
                  AppSpacing.heightSpace30,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProfileWidget(
                        color: const Color(0xffFA7B86).withOpacity(0.10),
                        svg: AppSvgs.mylocation,
                        title: 'My Adresses',
                        ontap: () {
                          AppNavigations.to(context,
                              nextScreen: const EmptyAdress());
                        },
                      ),
                      ProfileWidget(
                        color: const Color(0xff43BEA0).withOpacity(0.10),
                        svg: AppSvgs.myvoucher,
                        title: 'My Vouchers',
                        ontap: () {
                          AppNavigations.to(context,
                              nextScreen: const MyVouchers());
                        },
                      ),
                    ],
                  ),
                  AppSpacing.heightSpace30,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  String title, svg;
  Color color;
  void Function()? ontap;
  ProfileWidget({
    super.key,
    required this.title,
    required this.color,
    required this.svg,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 192,
        width: MediaQuery.of(context).size.width * 0.40,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: const Color(0xff000000).withOpacity(0.20),
                offset: const Offset(0, 3),
                blurRadius: 20,
                spreadRadius: -12,
              )
            ],
            color: Colors.white,
            border: Border.all(color: const Color(0xffDADADA)),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 110,
              width: MediaQuery.of(context).size.width * 0.29,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Center(
                child: SvgPicture.string(svg),
              ),
            ),
            AppText(
              text: title,
              color: const Color(0xff455A64),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            )
          ],
        ),
      ),
    );
  }
}
