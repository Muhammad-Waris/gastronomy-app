import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constants/app_colors.dart';
import '../constants/app_svgs.dart';
import '../controllers/mainp.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final iconList = <IconData>[
      Icons.home_outlined,
      Icons.favorite_border,
      Icons.notifications_none_outlined,
      Icons.person_4_outlined,
    ];

    return GetBuilder<MainPageController>(
      init: MainPageController(),
      builder: (controller) {
        return ColoredBox(
          color: AppColors.primaryColor,
          child: SafeArea(
            child: Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.white,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: SvgPicture.string(AppSvgs.logo),
                  ),
                ),
                //params
              ),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
              body: controller.allScreens[controller.selectedIndex],
              bottomNavigationBar: AnimatedBottomNavigationBar(
                activeColor: AppColors.primaryColor,
                activeIndex: controller.selectedIndex,
                gapLocation: GapLocation.center,
                notchSmoothness: NotchSmoothness.verySmoothEdge,
                leftCornerRadius: 32,
                rightCornerRadius: 32,
                onTap: (value) {
                  controller.changeIndex(value);
                },
                icons: iconList, //other params
              ),
            ),
          ),
        );
      },
    );
  }
}
