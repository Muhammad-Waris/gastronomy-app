import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gastronomy_app/constants/app_svgs.dart';
import 'package:gastronomy_app/controllers/homepage_controller/homepage_controller.dart';
import 'package:gastronomy_app/widgets/app_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/app_colors.dart';
import '../../controllers/mainp.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

final tabs = ["Home", "Favourites", "Notifications", "Profile"];

class _MainScreenState extends State<MainScreen> {
  // int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<MainPageController>(
          init: MainPageController(),
          builder: (controller) {
            return controller.allScreens[controller.selectedIndex];
          }),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(3.0),
        child: PopupMenuButton(
          color: Colors.transparent,
          position: PopupMenuPosition.over,
          itemBuilder: (context) {
            return [
              PopupMenuItem(
                  child: Container(
                width: 120,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(28),
                ),
              ))
            ];
          },
          child: Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.20),
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Image.asset("assets/images/small_logo.png"),
              )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildBottomTabBar(),
    );
  }

  _buildBottomTabBar2() {
    return GetBuilder<MainPageController>(
        init: MainPageController(),
        builder: (controller) {
          return Container(
            width: MediaQuery.of(context).size.width * 0.37,
            height: 45,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.20),
                  offset: const Offset(0, 0),
                  blurRadius: 10,
                  spreadRadius: 0)
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      controller.changeIndex(0);
                    },
                    child: SvgPicture.string(
                      AppSvgs.homebottomnav,
                      width: 27,
                      height: 27,
                    )),
                InkWell(
                    onTap: () {
                      controller.changeIndex(1);
                    },
                    child: SvgPicture.string(
                      AppSvgs.homebottomnav,
                      width: 27,
                      height: 27,
                    )),
                InkWell(
                    onTap: () {
                      controller.changeIndex(2);
                    },
                    child: SvgPicture.string(
                      AppSvgs.homebottomnav,
                      width: 27,
                      height: 27,
                    )),
                InkWell(
                    onTap: () {
                      controller.changeIndex(3);
                    },
                    child: SvgPicture.string(
                      AppSvgs.homebottomnav,
                      width: 27,
                      height: 27,
                    )),
              ],
            ),
          );
        });
  }

  _buildBottomTabBar() {
    return GetBuilder<MainPageController>(
        init: MainPageController(),
        builder: (controller) {
          return BottomAppBar(
            color: Colors.white,
            elevation: 44,
            shape: const CircularNotchedRectangle(),
            child: SizedBox(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () {
                        controller.changeIndex(0);
                      },
                      child: SizedBox(
                        height: 55,
                        width: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.string(
                              AppSvgs.homebottomnav,
                              width: 24,
                              height: 24,
                              color: controller.selectedIndex == 0
                                  ? AppColors.primaryColor
                                  : const Color(0xff858585),
                            ),
                            AppText(
                              text: "Home",
                              color: controller.selectedIndex == 0
                                  ? AppColors.primaryColor
                                  : const Color(0xff858585),
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            )
                          ],
                        ),
                      )),
                  InkWell(
                    onTap: () {
                      controller.changeIndex(1);
                    },
                    child: SizedBox(
                      height: 55,
                      width: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.string(
                            AppSvgs.heartbottomnav,
                            width: 24,
                            height: 24,
                            color: controller.selectedIndex == 1
                                ? AppColors.primaryColor
                                : const Color(0xff858585),
                          ),
                          AppText(
                            text: "Favourites",
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            color: controller.selectedIndex == 1
                                ? AppColors.primaryColor
                                : const Color(0xff858585),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                      onTap: () {
                        controller.changeIndex(2);
                      },
                      child: SizedBox(
                        height: 55,
                        width: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.string(
                              AppSvgs.notifbottomnav,
                              width: 24,
                              height: 24,
                              color: controller.selectedIndex == 2
                                  ? AppColors.primaryColor
                                  : const Color(0xff858585),
                            ),
                            AppText(
                              text: "Notification",
                              color: controller.selectedIndex == 2
                                  ? AppColors.primaryColor
                                  : const Color(0xff858585),
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            )
                          ],
                        ),
                      )),
                  InkWell(
                      onTap: () {
                        controller.changeIndex(3);
                      },
                      child: SizedBox(
                        height: 55,
                        width: 60,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.string(
                              AppSvgs.profilebottomnav,
                              width: 24,
                              height: 24,
                              color: controller.selectedIndex == 3
                                  ? AppColors.primaryColor
                                  : const Color(0xff858585),
                            ),
                            AppText(
                              text: "Profile",
                              color: controller.selectedIndex == 3
                                  ? AppColors.primaryColor
                                  : const Color(0xff858585),
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
          );
        });
  }
}

class abc extends StatelessWidget {
  const abc(String tab, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bh"),
      ),
    );
  }
}

class abc2 extends StatelessWidget {
  const abc2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("gygy"),
      ),
    );
  }
}

class abc3 extends StatelessWidget {
  const abc3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("fff"),
      ),
    );
  }
}

class abc4 extends StatelessWidget {
  const abc4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bh"),
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isSelected;
  void Function()? ontap;
  TabItem({
    super.key,
    required this.text,
    required this.icon,
    required this.isSelected,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              icon,
              color:
                  isSelected ? AppColors.primaryColor : const Color(0xff858585),
            ),
            Text(
              text,
              style: GoogleFonts.readexPro(
                  fontSize: 12,
                  color: isSelected
                      ? AppColors.primaryColor
                      : const Color(0xff858585),
                  fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
    );
  }
}
