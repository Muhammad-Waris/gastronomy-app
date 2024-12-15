import 'package:flutter/material.dart';
import 'package:gastronomy_app/constants/app_colors.dart';
import '../../../widgets/app_text.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.backgroundColor,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "assets/images/onboard1.png",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    AppText(
                      text: "Choose your \n preferred area",
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(),
                    Align(
                      alignment: Alignment.topCenter,
                      child: AppText(
                        text:
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.",
                        color: AppColors.headerColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
