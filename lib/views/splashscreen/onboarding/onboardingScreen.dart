import 'package:flutter/material.dart';
import 'package:gastronomy_app/constants/app_spacing.dart';
import 'package:gastronomy_app/utils/app_navigations.dart';
import 'package:gastronomy_app/widgets/app_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';
import '../../selectoptionScreen/select_on_option_screen.dart';
import 'onboarding1.dart';
import 'onboarding2.dart';
import 'onboarding3.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  final PageController _pageController = PageController();

  final List<Widget> boardingScreens = const [
    OnBoarding1(),
    OnBoarding2(),
    OnBoarding3(),
  ];

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.primaryColor,
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Stack(
              children: [
                PageView.builder(
                  itemCount: boardingScreens.length,
                  controller: _pageController,
                  itemBuilder: (context, index) {
                    return boardingScreens[index];
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: [
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: SmoothPageIndicator(
                              controller: _pageController,
                              count: 3,
                              effect: const ExpandingDotsEffect(
                                dotHeight: 10,
                                dotWidth: 10,
                                activeDotColor: AppColors.primaryColor,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: AppButton(
                              onTap: () {
                                AppNavigations.off(context,
                                    nextScreen: SelectOneOptionScreen());
                              },
                              text: "",
                              borderRadius: 10,
                              child: Row(
                                children: const [
                                  AppText(
                                    text: "Next",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      AppSpacing.heightSpace10,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
