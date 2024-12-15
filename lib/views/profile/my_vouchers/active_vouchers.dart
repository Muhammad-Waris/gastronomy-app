import 'package:flutter/material.dart';
import 'package:gastronomy_app/constants/app_colors.dart';
import 'package:gastronomy_app/constants/app_spacing.dart';
import 'package:gastronomy_app/widgets/app_text.dart';

class ActiveVouchers extends StatelessWidget {
  const ActiveVouchers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ActiveVoucherWidget(),
        AppSpacing.heightSpace20,
                ActiveVoucherWidget(),

      ],
    );
  }
}

class ActiveVoucherWidget extends StatelessWidget {
   ActiveVoucherWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xffDADADA),
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.10),
              offset: const Offset(6, 4),
              spreadRadius: 0,
              blurRadius: 0,
            )
          ]),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/images/active_pic.png"),
              Container(
                margin: const EdgeInsets.only(top: 110, left: 20),
                height: 30,
                width: MediaQuery.of(context).size.width * 0.45,
                decoration: BoxDecoration(
                    color: const Color(0xffFAFAFA).withOpacity(0.70),
                    borderRadius: BorderRadius.circular(20)),
                child: const Center(
                  child: AppText(
                    text: "20.06.2022 - 25.06.2022",
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff263238),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppText(
                  text: "Chicken Pizza",
                  color: Color(0xff263238),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                AppText(
                  text: "-25%",
                  color: AppColors.primaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: double.infinity,
            child: Divider(
              color: Color(0xffDADADA),
              thickness: 1,
            ),
          ),
          AppSpacing.heightSpace10,
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            height: 35,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffF6F6F6),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                AppText(
                  text: "45eg67urhr94j504tnf945g94",
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff263238),
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.copy,
                  color: Color(0xff007AFF),
                  size: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
