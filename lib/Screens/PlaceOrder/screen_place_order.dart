import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenPlaceOrder extends StatefulWidget {
  const ScreenPlaceOrder({Key? key}) : super(key: key);

  @override
  State<ScreenPlaceOrder> createState() => _ScreenPlaceOrderState();
}

class _ScreenPlaceOrderState extends State<ScreenPlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColor.colorWhite),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: AppColor.colorPrimary_two,
        title: Row(
          children: const [
            Text(
              AppString.textPlaceOrder,
              style: TextStyle(
                color: AppColor.colorWhite,
                fontFamily: AppFonts.avenirRegular,
                fontSize: AppSize.mainSize18,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            top: AppSize.mainSize30,
            left: AppSize.mainSize30,
            right: AppSize.mainSize30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  AppString.textDeliveryAddress,
                  style: TextStyle(
                    color: AppColor.colorCoolGrey,
                    fontSize: AppSize.mainSize14,
                    fontFamily: AppFonts.avenirRegular,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    AppString.textChangeAddress,
                    style: TextStyle(
                      color: AppColor.colorPrimary_two,
                      fontSize: AppSize.mainSize14,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: AppSize.mainSize5,
            ),
            Row(
              children: const [
                Text(
                  AppString.text841MontgomeryStJersey,
                  style: TextStyle(
                    color: AppColor.colorBlack_two,
                    fontSize: AppSize.mainSize15,
                    fontFamily: AppFonts.avenirRegular,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: AppSize.mainSize33,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  AppString.textBillingAddress,
                  style: TextStyle(
                    color: AppColor.colorCoolGrey,
                    fontSize: AppSize.mainSize14,
                    fontFamily: AppFonts.avenirRegular,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    AppString.textChangeAddress,
                    style: TextStyle(
                      color: AppColor.colorPrimary_two,
                      fontSize: AppSize.mainSize14,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: AppSize.mainSize5,
            ),
            Row(
              children: const [
                Text(
                  AppString.textBillingAddressDetail,
                  style: TextStyle(
                    color: AppColor.colorBlack_two,
                    fontSize: AppSize.mainSize15,
                    fontFamily: AppFonts.avenirRegular,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: AppSize.mainSize33,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppString.textDeliveryType,
                style: TextStyle(
                  color: AppColor.colorBlack_two,
                  fontSize: AppSize.mainSize16,
                  fontFamily: AppFonts.avenirRegular,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: AppSize.mainSize6,
            ),
          ],
        ),
      ),
    );
  }
}
