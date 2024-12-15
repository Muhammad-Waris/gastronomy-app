import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gastronomy_app/constants/app_svgs.dart';
import 'package:gastronomy_app/views/splashscreen/onboarding/OnboardingScreen.dart';
import '../../utils/app_navigations.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () async {
      AppNavigations.off(
        context,
        nextScreen:  OnBoardingScreen(),
      );
    });
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/Splash.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SvgPicture.string(AppSvgs.logo),
        ),
      ),
    );
  }
}
