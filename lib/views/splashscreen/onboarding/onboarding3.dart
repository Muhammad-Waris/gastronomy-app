import 'package:flutter/material.dart';
import 'package:gastronomy_app/constants/app_colors.dart';
import '../../../widgets/app_text.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

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
                  "assets/images/onboard3.png",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    AppText(
                      text: "Sichere Zahlung &\n schnelle Lieferung",
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
