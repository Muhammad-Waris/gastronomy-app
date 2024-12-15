import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_spacing.dart';
import '../../constants/app_svgs.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
                Container(
              height: 125,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffFDF5EF),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: AppColors.primaryColor,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.20),
                                      spreadRadius: 0,
                                      blurRadius: 10,
                                      offset: const Offset(0, 0)),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                  child: SvgPicture.asset(
                                      "assets/icons/pizza.svg")),
                            ),
                          ),
                          const AppText(
                            text: "Pizza",
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.20),
                                      spreadRadius: 0,
                                      blurRadius: 10,
                                      offset: const Offset(0, 0)),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                  child: SvgPicture.asset(
                                      "assets/icons/burger.svg")),
                            ),
                          ),
                          const AppText(
                            text: "Burger",
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff9E9E9E),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.20),
                                      spreadRadius: 0,
                                      blurRadius: 10,
                                      offset: const Offset(0, 0)),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                  child: SvgPicture.asset(
                                      "assets/icons/fries.svg")),
                            ),
                          ),
                          const AppText(
                            text: "Fries",
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff9E9E9E),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.20),
                                      spreadRadius: 0,
                                      blurRadius: 10,
                                      offset: const Offset(0, 0)),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                  child: SvgPicture.asset(
                                      "assets/icons/sandwich.svg")),
                            ),
                          ),
                          const AppText(
                            text: "Sandwich",
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff9E9E9E),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            AppSpacing.heightSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 36,
                  width: MediaQuery.of(context).size.width * 0.22,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.20),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: const Offset(0, 0)),
                      ]),
                  child: const Center(
                    child: AppText(
                      text: "Veggie",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 36,
                  width: MediaQuery.of(context).size.width * 0.18,
                  decoration: BoxDecoration(
                      color: const Color(0xffFDF5EF),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.20),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: const Offset(0, 0)),
                      ]),
                  child: const Center(
                    child: AppText(
                      text: "Vegan",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff9E9E9E),
                    ),
                  ),
                ),
                Container(
                  height: 36,
                  width: MediaQuery.of(context).size.width * 0.18,
                  decoration: BoxDecoration(
                      color: const Color(0xffFDF5EF),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.20),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: const Offset(0, 0)),
                      ]),
                  child: const Center(
                    child: AppText(
                      text: "Special",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff9E9E9E),
                    ),
                  ),
                ),
                Container(
                  height: 36,
                  width: MediaQuery.of(context).size.width * 0.18,
                  decoration: BoxDecoration(
                      color: const Color(0xffFDF5EF),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.20),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: const Offset(0, 0)),
                      ]),
                  child: const Center(
                    child: AppText(
                      text: "Chicken",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff9E9E9E),
                    ),
                  ),
                ),
                Container(
                  height: 36,
                  width: MediaQuery.of(context).size.width * 0.18,
                  decoration: BoxDecoration(
                      color: const Color(0xffFDF5EF),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.20),
                            spreadRadius: 0,
                            blurRadius: 10,
                            offset: const Offset(0, 0)),
                      ]),
                  child: const Center(
                    child: AppText(
                      text: "Chicken",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff9E9E9E),
                    ),
                  ),
                ),
              ],
            ),
            AppSpacing.heightSpace10,
            Padding(
              padding: AppSpacing.defaultPaddingAll,
              child: Column(
                children: [
                  Row(
                    children: const [
                      AppText(
                        text: "Pizza",
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Row(
                      children: const [
                        AppText(
                          text: "Veggie",
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  AppSpacing.heightSpace20,
                  Restaurantwidget(
                    percentageContainer: Container(
                      height: 22,
                      width: MediaQuery.of(context).size.width * 0.08,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.primaryColor,
                          border: Border.all(
                            color: Colors.white,
                          )),
                      child: const Center(
                        child: Icon(
                          Icons.percent_rounded,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                    oldPrice: "18.00€",
                  ),
                  Restaurantwidget(),
                  Restaurantwidget(
                    percentageContainer: Container(
                      height: 22,
                      width: MediaQuery.of(context).size.width * 0.08,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.primaryColor,
                          border: Border.all(
                            color: Colors.white,
                          )),
                      child: const Center(
                        child: Icon(
                          Icons.percent_rounded,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                    oldPrice: "18.00€",
                    dropdown: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                            color: const Color(0xffFDF5EF),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.primaryColor,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.22),
                                offset: const Offset(0, 0),
                                blurRadius: 6,
                                spreadRadius: 0,
                              )
                            ]),
                        child: Center(
                          child: SvgPicture.string(AppSvgs.arrowdown),
                        ),
                      ),
                    ),
                  ),
                  AppSpacing.heightSpace20,
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffF9F9FB),
                    ),
                    child: Column(
                      children: [
                        const AmountPizza(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.77,
                          child: const Divider(
                            color: Color(0xffDADADA),
                            thickness: 1.1,
                          ),
                        ),
                        const AmountPizza(),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: const Divider(
                      color: Color(0xffDADADA),
                      thickness: 1.1,
                    ),
                  ),
                  Restaurantwidget(),
                  Row(
                    children: const [
                      AppText(
                        text: "Vegan",
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  AppSpacing.heightSpace10,
                  Restaurantwidget(
                    percentageContainer: Container(
                      height: 22,
                      width: MediaQuery.of(context).size.width * 0.08,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.primaryColor,
                          border: Border.all(
                            color: Colors.white,
                          )),
                      child: const Center(
                        child: Icon(
                          Icons.percent_rounded,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                    oldPrice: "18.00€",
                  ),
                  Restaurantwidget(
                    percentageContainer: Container(
                      height: 22,
                      width: MediaQuery.of(context).size.width * 0.08,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.primaryColor,
                          border: Border.all(
                            color: Colors.white,
                          )),
                      child: const Center(
                        child: Icon(
                          Icons.percent_rounded,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                    oldPrice: "18.00€",
                    dropdown: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                            color: const Color(0xffFDF5EF),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.primaryColor,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.22),
                                offset: const Offset(0, 0),
                                blurRadius: 6,
                                spreadRadius: 0,
                              )
                            ]),
                        child: Center(
                          child: SvgPicture.string(AppSvgs.arrowdown),
                        ),
                      ),
                    ),
                  ),
                  AppSpacing.heightSpace20,
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffF9F9FB),
                    ),
                    child: Column(
                      children: [
                        const AmountPizza(),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.77,
                          child: const Divider(
                            color: Color(0xffDADADA),
                            thickness: 1.1,
                          ),
                        ),
                        const AmountPizza(),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: const Divider(
                      color: Color(0xffDADADA),
                      thickness: 1.1,
                    ),
                  ),
                  Restaurantwidget(),
                  Restaurantwidget(
                    percentageContainer: Container(
                      height: 22,
                      width: MediaQuery.of(context).size.width * 0.08,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.primaryColor,
                          border: Border.all(
                            color: Colors.white,
                          )),
                      child: const Center(
                        child: Icon(
                          Icons.percent_rounded,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                    oldPrice: "18.00€",
                    dropdown: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                            color: const Color(0xffFDF5EF),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.primaryColor,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.22),
                                offset: const Offset(0, 0),
                                blurRadius: 6,
                                spreadRadius: 0,
                              )
                            ]),
                        child: Center(
                          child: SvgPicture.string(AppSvgs.arrowup),
                        ),
                      ),
                    ),
                  ),
                  Restaurantwidget(),
                  Restaurantwidget(
                    percentageContainer: Container(
                      height: 22,
                      width: MediaQuery.of(context).size.width * 0.08,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.primaryColor,
                          border: Border.all(
                            color: Colors.white,
                          )),
                      child: const Center(
                        child: Icon(
                          Icons.percent_rounded,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                    oldPrice: "18.00€",
                    dropdown: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 22,
                        width: 22,
                        decoration: BoxDecoration(
                            color: const Color(0xffFDF5EF),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.primaryColor,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.22),
                                offset: const Offset(0, 0),
                                blurRadius: 6,
                                spreadRadius: 0,
                              )
                            ]),
                        child: Center(
                          child: SvgPicture.string(AppSvgs.arrowup),
                        ),
                      ),
                    ),
                  ),
                  AppSpacing.heightSpace20,
                  AppButton(
                    onTap: () {},
                    text: "",
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 27,
                          width: 24,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: AppText(
                              text: "2",
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const AppText(
                          text: "Warenkorb ansehen",
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                        const AppText(
                          text: "24,00 €",
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
     
      ],
    );
  }
}



class AmountPizza extends StatelessWidget {
  const AmountPizza({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset("assets/images/chicken_pizza_small.png"),
              const SizedBox(
                width: 10,
              ),
              const AppText(
                text: "Chicken Pizza small",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ],
          ),
          Row(
            children: [
              const AppText(
                text: "12.00€",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xffFDF5EF),
                    border: Border.all(
                      color: AppColors.primaryColor,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white10,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                        blurRadius: 0,
                      )
                    ]),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: AppColors.primaryColor,
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Restaurantwidget extends StatelessWidget {
  IconData? icon;
  Widget? percentageContainer, dropdown;
  String? oldPrice;
  Restaurantwidget({
    super.key,
    this.icon,
    this.percentageContainer,
    this.oldPrice,
    this.dropdown,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/food3.png"),
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: percentageContainer,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const AppText(
                      text: "Chicken Pizza",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    SvgPicture.string(AppSvgs.details),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: const AppText(
                    text: "It is a trustworthy choice on the long",
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff9E9E9E),
                    textAlign: TextAlign.left,
                  ),
                ),
                Row(
                  children: [
                    const AppText(
                      text: "12.00€",
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    AppText(
                      text: oldPrice ?? "",
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff9E9E9E),
                      textDecoration: TextDecoration.lineThrough,
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    SizedBox(child: dropdown),
                  ],
                )
              ],
            ),
          ],
        ),
        const SizedBox(
          width: double.infinity,
          child: Divider(
            color: Color(0xffDADADA),
            thickness: 1.3,
          ),
        )
      ],
    );
  }
}
