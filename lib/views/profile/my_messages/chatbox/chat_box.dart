import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gastronomy_app/constants/app_spacing.dart';
import 'package:gastronomy_app/widgets/app_text.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/app_svgs.dart';

class ChatBoxScreen extends StatelessWidget {
  const ChatBoxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // extendBody: true,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(11.5),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff000000).withOpacity(0.10),
                      offset: const Offset(1, 7),
                      blurRadius: 3,
                      blurStyle: BlurStyle.outer,
                    )
                  ]),
              child: const Center(
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Color(0xff333333),
                  size: 18,
                ),
              ),
            ),
          ),
        ),
        title: Row(
          children: [
            Image.asset("assets/images/profile.png"),
            const SizedBox(
              width: 10,
            ),
            const AppText(
              text: "Micheal Khan",
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: AppSpacing.defaultPaddingAll,
              child: Column(
                children: [
                  AppSpacing.heightSpace10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      AppText(
                        text: "Yesterday, 2/19/22",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff97ADB6),
                      ),
                    ],
                  ),
                  AppSpacing.heightSpace10,
                  Row(
                    children: [
                      Container(
                        height: 55,
                        width: MediaQuery.of(context).size.width * 0.55,
                        decoration: BoxDecoration(
                            color: const Color(0xffF7F8F9),
                            borderRadius: BorderRadius.circular(27)),
                        child: const Center(
                          child: AppText(
                            text: "Hey, I’m on your way",
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff3E4958),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 13,
                      ),
                      AppText(
                        text: "2:36 AM",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff97ADB6),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              padding: const EdgeInsets.all(12),
                              height: 90,
                              width: MediaQuery.of(context).size.width * 0.52,
                              decoration: const BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(37),
                                      bottomRight: Radius.circular(37),
                                      topLeft: Radius.circular(37))),
                              child: const Center(
                                child: AppText(
                                  text: "Ok, waiting for you near supermarket",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  textAlign: TextAlign.start,
                                ),
                              )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              AppText(
                                text: "2:36 AM",
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff97ADB6),
                              ),
                              SizedBox(
                                width: 13,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  AppSpacing.heightSpace10,
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 55,
                            width: MediaQuery.of(context).size.width * 0.66,
                            decoration: BoxDecoration(
                                color: const Color(0xffF7F8F9),
                                borderRadius: BorderRadius.circular(27)),
                            child: const Center(
                              child: AppText(
                                text: "Hold on, i will be in 5 minutes",
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff3E4958),
                              ),
                            ),
                          ),
                          AppSpacing.heightSpace10,
                          Container(
                              padding: const EdgeInsets.all(12),
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.15,
                              decoration: const BoxDecoration(
                                  color: Color(0xffF7F8F9),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(25),
                                      bottomRight: Radius.circular(25),
                                      topRight: Radius.circular(25))),
                              child: const Center(
                                child: AppText(
                                  text: "🙂",
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  textAlign: TextAlign.start,
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      SizedBox(
                        width: 13,
                      ),
                      AppText(
                        text: "2:36 AM",
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff97ADB6),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 66,
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.44),
              offset: const Offset(8, 0),
              spreadRadius: 0,
              blurRadius: 6)
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                height: 46,
                width: MediaQuery.of(context).size.width * 0.77,
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(
                    hintText: "Type your message...",
                    hintStyle: GoogleFonts.poppins(
                        color: const Color(0xffD5DDE0),
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Color(0xffD5DDE0), width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Color(0xffD5DDE0), width: 2),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: InkWell(
                          onTap: () {}, child: SvgPicture.string(AppSvgs.send)),
                    ),
                  ),
                )),
            InkWell(
              onTap: () {},
              child: Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(child: SvgPicture.string(AppSvgs.microphone))),
            )
          ],
        ),
      ),
    );
  }
}
