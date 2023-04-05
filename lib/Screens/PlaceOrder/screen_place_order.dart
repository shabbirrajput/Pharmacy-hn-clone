import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Screens/Auth/screen_set_address.dart';
import 'package:pharmacy_hn_clone/Widget/bottomsheet_select_payment_option.dart';
import 'package:pharmacy_hn_clone/category/category_model.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenPlaceOrder extends StatefulWidget {
  const ScreenPlaceOrder({Key? key}) : super(key: key);

  @override
  State<ScreenPlaceOrder> createState() => _ScreenPlaceOrderState();
}

class _ScreenPlaceOrderState extends State<ScreenPlaceOrder> {
  int _value = 0;

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
      body: SingleChildScrollView(
        child: Padding(
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScreenSetAddress(),
                        ),
                      );
                    },
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScreenSetAddress(),
                        ),
                      );
                    },
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
              Container(
                height: AppSize.mainSize36,
                width: AppSize.mainSize300,
                color: AppColor.colorWhite_three,
                child: const Padding(
                  padding: EdgeInsets.zero,
                  child: TextField(
                    style: TextStyle(color: AppColor.colorBlack_two),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColor.colorWhite_three,
                        border: InputBorder.none,
                        hintText: AppString.textSelectDeliveryType,
                        hintStyle: TextStyle(
                            color: AppColor.colorCoolGrey,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.mainSize35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    AppString.textYourProducts,
                    style: TextStyle(
                      color: AppColor.colorBlack_two,
                      fontSize: AppSize.mainSize16,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet<void>(
                        isScrollControlled: true,
                        context: context,
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: AppSize.mainSize500,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const SizedBox(
                                    height: AppSize.mainSize20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 52, right: 16),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Expanded(
                                          child: Align(
                                            alignment: Alignment.topCenter,
                                            child: Text(
                                              AppString.textProductList,
                                              style: TextStyle(
                                                  fontSize: AppSize.mainSize20,
                                                  color:
                                                      AppColor.colorBlack_two,
                                                  fontFamily:
                                                      AppFonts.avenirRegular,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                        ),
                                        // const SizedBox(
                                        //   width: AppSize.mainSize82,
                                        // ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Image.asset(AppImage.appCross),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: AppSize.mainSize32,
                                  ),
                                  Expanded(
                                    child: ListView.builder(
                                        scrollDirection: Axis.vertical,
                                        itemBuilder: (context, index) {
                                          return Column(
                                            children: [
                                              Card(
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      height:
                                                          AppSize.mainSize100,
                                                      width:
                                                          AppSize.mainSize100,
                                                      child: Image.asset(
                                                          csitems()[index]
                                                              .image!),
                                                    ),
                                                    const SizedBox(
                                                      width: AppSize.mainSize16,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          csitems()[index]
                                                              .name!,
                                                          style: const TextStyle(
                                                              fontSize: AppSize
                                                                  .mainSize14,
                                                              color: AppColor
                                                                  .colorBlack_two,
                                                              fontFamily: AppFonts
                                                                  .avenirRegular,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                        Row(
                                                          children: [
                                                            const Text(
                                                              "Qty: 1",
                                                              style: TextStyle(
                                                                color: AppColor
                                                                    .colorCoolGrey,
                                                                fontFamily: AppFonts
                                                                    .avenirRegular,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                width: AppSize
                                                                    .mainSize77),
                                                            Text(
                                                              "Total Price: \$${catitems()[index].price!}",
                                                              style:
                                                                  const TextStyle(
                                                                color: AppColor
                                                                    .colorPrimary_two,
                                                                fontFamily: AppFonts
                                                                    .avenirRegular,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                          height: AppSize
                                                              .mainSize43,
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                        itemCount: catitems().length),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: AppSize.mainSize32),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          AppString.textSubtotal,
                                          style: TextStyle(
                                            color: AppColor.colorBlack_two,
                                            fontFamily: AppFonts.avenirRegular,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          AppString.textTotalPrice,
                                          style: TextStyle(
                                            color: AppColor.colorPrimary_two,
                                            fontFamily: AppFonts.avenirRegular,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: AppSize.mainSize33,
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: const Text(
                      AppString.textViewDetail,
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
                height: AppSize.mainSize14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(AppImage.appDoritosSmall),
                  const SizedBox(
                    width: AppSize.mainSize10,
                  ),
                  Image.asset(AppImage.appAveenoBabySmall),
                  const SizedBox(
                    width: AppSize.mainSize10,
                  ),
                  Image.asset(AppImage.appHSSmall),
                  const SizedBox(
                    width: AppSize.mainSize10,
                  ),
                  Image.asset(AppImage.appColgateSmall),
                ],
              ),
              const SizedBox(
                height: AppSize.mainSize35,
              ),
              Row(
                children: const [
                  Text(
                    AppString.textAddTip,
                    style: TextStyle(
                      color: AppColor.colorBlack_two,
                      fontSize: AppSize.mainSize16,
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
                    AppString.textAddTipDetail,
                    style: TextStyle(
                      color: AppColor.colorCoolGrey,
                      fontSize: AppSize.mainSize14,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.mainSize80,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppString.textYourOrder,
                  style: TextStyle(
                    color: AppColor.colorBlack_two,
                    fontSize: AppSize.mainSize16,
                    fontFamily: AppFonts.avenirRegular,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.mainSize12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    AppString.textSubtotal,
                    style: TextStyle(
                      color: AppColor.colorCoolGrey,
                      fontSize: AppSize.mainSize14,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    AppString.textSubtotalAmount,
                    style: TextStyle(
                      color: AppColor.colorBlack_two,
                      fontSize: AppSize.mainSize14,
                      fontFamily: AppFonts.avenirRegular,
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
                    AppString.textDeliveryFees,
                    style: TextStyle(
                      color: AppColor.colorCoolGrey,
                      fontSize: AppSize.mainSize14,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    AppString.textDeliveryFeesAmount,
                    style: TextStyle(
                      color: AppColor.colorBlack_two,
                      fontSize: AppSize.mainSize14,
                      fontFamily: AppFonts.avenirRegular,
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
                    AppString.textServiceFees,
                    style: TextStyle(
                      color: AppColor.colorCoolGrey,
                      fontSize: AppSize.mainSize14,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    AppString.textServiceFeesAmount,
                    style: TextStyle(
                      color: AppColor.colorBlack_two,
                      fontSize: AppSize.mainSize14,
                      fontFamily: AppFonts.avenirRegular,
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
                    AppString.textTip,
                    style: TextStyle(
                      color: AppColor.colorCoolGrey,
                      fontSize: AppSize.mainSize14,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    AppString.textTipAmount,
                    style: TextStyle(
                      color: AppColor.colorBlack_two,
                      fontSize: AppSize.mainSize14,
                      fontFamily: AppFonts.avenirRegular,
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
                    AppString.textTotal,
                    style: TextStyle(
                      color: AppColor.colorCoolGrey,
                      fontSize: AppSize.mainSize14,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    AppString.textTotalAmount,
                    style: TextStyle(
                      color: AppColor.colorBlack_two,
                      fontSize: AppSize.mainSize14,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.mainSize36,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.mainSize30),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        AppString.textAddDiscountCoupon,
                        style: TextStyle(
                          color: AppColor.colorBlack_two,
                          fontSize: AppSize.mainSize14,
                          fontFamily: AppFonts.avenirRegular,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Image.asset(AppImage.appCouponArrow),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.mainSize34,
              ),
              SizedBox(
                height: AppSize.mainSize46,
                width: AppSize.mainSize320,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return BottomSheetSelectPaymentOption(
                          onChange: (p0) {
                            _value = p0;
                          },
                          selectedIndex: _value,
                        );
                      },
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) => AppColor.colorPrimary,
                    ),
                  ),
                  child: const Text(
                    AppString.textContinueToPay,
                    style: TextStyle(
                      color: AppColor.colorWhite_two,
                      fontFamily: AppFonts.avenirRegular,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.mainSize24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
