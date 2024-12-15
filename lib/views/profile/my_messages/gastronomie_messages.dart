import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gastronomy_app/constants/app_colors.dart';
import 'package:gastronomy_app/constants/app_spacing.dart';
import 'package:gastronomy_app/utils/app_navigations.dart';
import 'package:gastronomy_app/widgets/app_text.dart';

import '../../../constants/app_svgs.dart';
import 'chatbox/chat_box.dart';

class GastronomieMessages extends StatelessWidget {
  const GastronomieMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppSpacing.heightSpace20,
        InkWell(
          onTap: () {
            AppNavigations.to(context, nextScreen: const ChatBoxScreen());
          },
          child: ChatBox(
            img: "assets/images/chat1.png",
            messages: '8',
          ),
        ),
        InkWell(
          onTap: () {
            AppNavigations.to(context, nextScreen: const ChatBoxScreen());
          },
          child: ChatBox(
            img: "assets/images/chat2.png",
            messages: '1',
          ),
        ),
        InkWell(
          onTap: () {
            AppNavigations.to(context, nextScreen: const ChatBoxScreen());
          },
          child: ChatBox2(
            img: "assets/images/chat3.png",
          ),
        ),
        ChatBox(
          img: "assets/images/chat4.png",
          messages: '1',
        ),
      ],
    );
  }
}

class ChatBox extends StatelessWidget {
  String img, messages;
  ChatBox({
    super.key,
    required this.img,
    required this.messages,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffEFEFEF),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 17,
          ),
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Image.asset(img),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: SvgPicture.string(AppSvgs.online),
              )
            ],
          ),
          const SizedBox(
            width: 17,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppText(
                text: "Omar Stanton",
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.63,
                child: const AppText(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
                  fontSize: 9,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff6C6C6C),
                  textAlign: TextAlign.start,
                ),
              ),
              const AppText(
                text: "1d ago",
                fontSize: 7,
                fontWeight: FontWeight.w300,
                color: Color(0xff767676),
              )
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
              height: 27,
              width: 27,
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                  child: AppText(
                text: messages,
                color: const Color(0xffFFFFFF),
                fontSize: 12,
              )))
        ],
      ),
    );
  }
}

class ChatBox2 extends StatelessWidget {
  String img;
  ChatBox2({
    super.key,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffFFFFFF),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 17,
          ),
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              Image.asset(img),
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: SvgPicture.string(AppSvgs.online),
              )
            ],
          ),
          const SizedBox(
            width: 17,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppText(
                text: "Omar Stanton",
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.63,
                child: const AppText(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
                  fontSize: 9,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff6C6C6C),
                  textAlign: TextAlign.start,
                ),
              ),
              const AppText(
                text: "1d ago",
                fontSize: 7,
                fontWeight: FontWeight.w300,
                color: Color(0xff767676),
              )
            ],
          ),
        ],
      ),
    );
  }
}
