import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class TabCurrentOrder extends StatefulWidget {
  const TabCurrentOrder({Key? key}) : super(key: key);

  @override
  State<TabCurrentOrder> createState() => _TabCurrentOrderState();
}

class _TabCurrentOrderState extends State<TabCurrentOrder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.mainSize16),
      child: Padding(
        padding: const EdgeInsets.all(AppSize.mainSize14),
        child: Column(
          children: [
            const SizedBox(
              height: AppSize.mainSize16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  AppString.textOrderNo,
                  style: TextStyle(
                    color: AppColor.colorBlack_two,
                    fontSize: AppSize.mainSize16,
                    fontFamily: AppFonts.avenirRegular,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  AppString.textOrderAmount,
                  style: TextStyle(
                    color: AppColor.colorPrimary_two,
                    fontSize: AppSize.mainSize16,
                    fontFamily: AppFonts.avenirHeavy,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.mainSize5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  AppString.textOrderBy,
                  style: TextStyle(
                    color: AppColor.colorCoolGrey,
                    fontSize: AppSize.mainSize14,
                    fontFamily: AppFonts.avenirRegular,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  AppString.textEmail,
                  style: TextStyle(
                    color: AppColor.colorBlack_two,
                    fontSize: AppSize.mainSize14,
                    fontFamily: AppFonts.avenirRegular,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: AppSize.mainSize5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  AppString.textOrderDateTime,
                  style: TextStyle(
                    color: AppColor.colorCoolGrey,
                    fontSize: AppSize.mainSize14,
                    fontFamily: AppFonts.avenirRegular,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  AppString.textOrderDateAndTime,
                  style: TextStyle(
                    color: AppColor.colorBlack_two,
                    fontSize: AppSize.mainSize14,
                    fontFamily: AppFonts.avenirRegular,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: AppSize.mainSize10,
            ),
            Row(
              children: [
                Image.asset(AppImage.appDoritosSmall),
                const SizedBox(
                  width: AppSize.mainSize10,
                ),
                Image.asset(AppImage.appAveenoBabySmall),
                const SizedBox(
                  width: AppSize.mainSize10,
                ),
                Image.asset(AppImage.appHeadAndShouldersSmall),
              ],
            ),
            const SizedBox(
              height: AppSize.mainSize43,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  AppString.textOrderNo2,
                  style: TextStyle(
                    color: AppColor.colorBlack_two,
                    fontSize: AppSize.mainSize16,
                    fontFamily: AppFonts.avenirRegular,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  AppString.textOrderAmount2,
                  style: TextStyle(
                    color: AppColor.colorPrimary_two,
                    fontSize: AppSize.mainSize16,
                    fontFamily: AppFonts.avenirHeavy,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.mainSize5,
            ),
            const SizedBox(
              height: AppSize.mainSize5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  AppString.textOrderDateTime,
                  style: TextStyle(
                    color: AppColor.colorCoolGrey,
                    fontSize: AppSize.mainSize14,
                    fontFamily: AppFonts.avenirRegular,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  AppString.textOrderDateAndTime2,
                  style: TextStyle(
                    color: AppColor.colorBlack_two,
                    fontSize: AppSize.mainSize14,
                    fontFamily: AppFonts.avenirRegular,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: AppSize.mainSize10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AppImage.appO1),
                const SizedBox(
                  width: AppSize.mainSize10,
                ),
                Image.asset(AppImage.appO2),
                const SizedBox(
                  width: AppSize.mainSize10,
                ),
                Image.asset(AppImage.appO3),
                const SizedBox(
                  width: AppSize.mainSize10,
                ),
                Image.asset(AppImage.appO4),
                const SizedBox(
                  width: AppSize.mainSize10,
                ),
                Image.asset(AppImage.appO5),
                const SizedBox(
                  width: AppSize.mainSize10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
