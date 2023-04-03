import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/category/category_model.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenProcessOrderDetail extends StatefulWidget {
  const ScreenProcessOrderDetail({Key? key}) : super(key: key);

  @override
  State<ScreenProcessOrderDetail> createState() =>
      _ScreenProcessOrderDetailState();
}

class _ScreenProcessOrderDetailState extends State<ScreenProcessOrderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppSize.mainSize47, vertical: AppSize.mainSize20),
        child: SizedBox(
          height: AppSize.mainSize46,
          width: AppSize.mainSize266,
          child: OutlinedButton.icon(
            icon: Image.asset(AppImage.appWpLogo),
            label: const Text(
              AppString.textChatWithSeller,
              style: TextStyle(
                  color: AppColor.colorWhite,
                  fontFamily: AppFonts.avenirRegular),
            ),
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              disabledForegroundColor: AppColor.colorPrimary,
              backgroundColor: AppColor.colorGrass,
              // side: const BorderSide(color: AppColor.colorPrimary),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColor.colorWhite),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: AppColor.colorPrimary_two,
        title: Row(
          children: const [
            Text(
              AppString.textOrderNo,
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
              left: AppSize.mainSize30,
              right: AppSize.mainSize30,
              top: AppSize.mainSize30),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.mainSize10),
                child: Row(
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
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.mainSize10),
                child: Row(
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
              ),
              const SizedBox(
                height: AppSize.mainSize20,
              ),
              SizedBox(
                height: AppSize.mainSize46,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet<void>(
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return SizedBox(
                          height: AppSize.mainSize500,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                const SizedBox(
                                  height: AppSize.mainSize24,
                                ),
                                const Text(
                                  AppString.textCancelOrder,
                                  style: TextStyle(
                                    color: AppColor.colorBlack_two,
                                    fontSize: AppSize.mainSize20,
                                    fontFamily: AppFonts.avenirRegular,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                const SizedBox(
                                  height: AppSize.mainSize24,
                                ),
                                const SizedBox(
                                  height: AppSize.mainSize72,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: AppSize.mainSize20),
                                    child: TextField(
                                      maxLines: null,
                                      // Set this
                                      expands: true,
                                      // and this
                                      keyboardType: TextInputType.multiline,
                                      style: TextStyle(
                                          color: AppColor.colorBlack_two),
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: AppColor.colorWhite_three,
                                          border: InputBorder.none,
                                          hintText: AppString.textAddReason,
                                          hintStyle: TextStyle(
                                              color: AppColor.colorCoolGrey,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: AppSize.mainSize18,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: AppSize.mainSize20),
                                  child: Row(
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: AppSize.mainSize46,
                                        width: AppSize.mainSize170,
                                        child: OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                            disabledForegroundColor:
                                                AppColor.colorPrimary,
                                            side: const BorderSide(
                                                color: AppColor.colorPrimary),
                                          ),
                                          child: const Text(
                                            AppString.textCancel,
                                            style: TextStyle(
                                              color: AppColor.colorPrimary,
                                              fontFamily:
                                                  AppFonts.avenirRegular,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: AppSize.mainSize8,
                                      ),
                                      SizedBox(
                                        height: AppSize.mainSize46,
                                        width: AppSize.mainSize170,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty
                                                    .resolveWith<Color?>(
                                              (Set<MaterialState> states) =>
                                                  AppColor.colorPrimary,
                                            ),
                                          ),
                                          child: const Text(
                                            AppString.textSubmit,
                                            style: TextStyle(
                                              color: AppColor.colorWhite_two,
                                              fontFamily:
                                                  AppFonts.avenirRegular,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
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
                    AppString.textCancelOrder,
                    style: TextStyle(
                        color: AppColor.colorWhite_two,
                        fontSize: AppSize.mainSize16,
                        fontFamily: AppFonts.avenirRegular,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.mainSize21,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.mainSize10),
                child: Row(
                  children: const [
                    Text(
                      AppString.textTrackOrder,
                      style: TextStyle(
                          color: AppColor.colorBlack_two,
                          fontSize: AppSize.mainSize16,
                          fontFamily: AppFonts.avenirRegular,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppSize.mainSize20,
              ),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColor.colorGrass,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: AppSize.mainSize3, top: AppSize.mainSize3),
                          child: Image.asset(AppImage.appOrderPlace),
                        ),
                      ),
                      const SizedBox(
                        width: AppSize.mainSize16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            AppString.textOrderPlaced,
                            style: TextStyle(
                                color: AppColor.colorBlack_two,
                                fontSize: AppSize.mainSize14,
                                fontFamily: AppFonts.avenirRegular,
                                fontWeight: FontWeight.w500),
                          ),
                          Wrap(children: const [
                            SizedBox(
                              height: AppSize.mainSize40,
                              width: AppSize.mainSize200,
                              child: Text(
                                AppString.textWeHaveReceivedYourOrderOn,
                                style: TextStyle(
                                    color: AppColor.colorCoolGrey,
                                    fontSize: AppSize.mainSize14,
                                    fontFamily: AppFonts.avenirRegular,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ]),
                          const SizedBox(
                            height: AppSize.mainSize30,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColor.colorGrass,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: AppSize.mainSize3, top: AppSize.mainSize3),
                          child: Image.asset(AppImage.appOrderPlace),
                        ),
                      ),
                      const SizedBox(
                        width: AppSize.mainSize16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            AppString.textOrderConfirm,
                            style: TextStyle(
                                color: AppColor.colorBlack_two,
                                fontSize: AppSize.mainSize14,
                                fontFamily: AppFonts.avenirRegular,
                                fontWeight: FontWeight.w500),
                          ),
                          Wrap(children: const [
                            SizedBox(
                              height: AppSize.mainSize40,
                              width: AppSize.mainSize200,
                              child: Text(
                                AppString.textWeHasBeenConfirmedOn,
                                style: TextStyle(
                                    color: AppColor.colorCoolGrey,
                                    fontSize: AppSize.mainSize14,
                                    fontFamily: AppFonts.avenirRegular,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ]),
                          const SizedBox(
                            height: AppSize.mainSize30,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColor.colorDustyOrange,
                        child: Image.asset(AppImage.appOrderProcess),
                      ),
                      const SizedBox(
                        width: AppSize.mainSize16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            AppString.textOrderProcessed,
                            style: TextStyle(
                                color: AppColor.colorDustyOrange,
                                fontSize: AppSize.mainSize14,
                                fontFamily: AppFonts.avenirRegular,
                                fontWeight: FontWeight.w500),
                          ),
                          Wrap(children: const [
                            SizedBox(
                              height: AppSize.mainSize40,
                              width: AppSize.mainSize200,
                              child: Text(
                                AppString.textWeArePreparingYourOrder,
                                style: TextStyle(
                                    color: AppColor.colorDustyOrange,
                                    fontSize: AppSize.mainSize14,
                                    fontFamily: AppFonts.avenirRegular,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ]),
                          const SizedBox(
                            height: AppSize.mainSize30,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColor.colorCoolGrey,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: AppSize.mainSize3, top: AppSize.mainSize3),
                          child: Image.asset(AppImage.appOrderReadyToShip),
                        ),
                      ),
                      const SizedBox(
                        width: AppSize.mainSize16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            AppString.textReadyToShip,
                            style: TextStyle(
                                color: AppColor.colorCoolGrey,
                                fontSize: AppSize.mainSize14,
                                fontFamily: AppFonts.avenirRegular,
                                fontWeight: FontWeight.w500),
                          ),
                          Wrap(children: const [
                            SizedBox(
                              height: AppSize.mainSize40,
                              width: AppSize.mainSize200,
                              child: Text(
                                AppString.textYourOrderIsReadyForShipping,
                                style: TextStyle(
                                    color: AppColor.colorCoolGrey,
                                    fontSize: AppSize.mainSize14,
                                    fontFamily: AppFonts.avenirRegular,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ]),
                          const SizedBox(
                            height: AppSize.mainSize30,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: AppColor.colorCoolGrey,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: AppSize.mainSize3, top: AppSize.mainSize3),
                          child: Image.asset(AppImage.appOrderDelivered),
                        ),
                      ),
                      const SizedBox(
                        width: AppSize.mainSize16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            AppString.textDelivered,
                            style: TextStyle(
                                color: AppColor.colorCoolGrey,
                                fontSize: AppSize.mainSize14,
                                fontFamily: AppFonts.avenirRegular,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSize.mainSize36,
                  ),
                  Row(
                    children: [
                      Image.asset(AppImage.appAvatar),
                      const SizedBox(
                        width: AppSize.mainSize8,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                AppString.textWilliamSadders,
                                style: TextStyle(
                                    color: AppColor.colorBlack_two,
                                    fontSize: AppSize.mainSize16,
                                    fontFamily: AppFonts.avenirRegular,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                AppString.textTipText,
                                style: TextStyle(
                                    color: AppColor.colorBlack_two,
                                    fontSize: AppSize.mainSize16,
                                    fontFamily: AppFonts.avenirRegular,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                AppString.textTipTextAmount,
                                style: TextStyle(
                                    color: AppColor.colorPrimary_two,
                                    fontSize: AppSize.mainSize16,
                                    fontFamily: AppFonts.avenirRegular,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: AppSize.mainSize77,
                      ),
                      CircleAvatar(
                        backgroundColor: AppColor.colorPrimary_two,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: AppSize.mainSize3, top: AppSize.mainSize3),
                          child: Image.asset(AppImage.appMessage),
                        ),
                      ),
                      const SizedBox(
                        width: AppSize.mainSize8,
                      ),
                      CircleAvatar(
                        backgroundColor: AppColor.colorPrimary_two,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: AppSize.mainSize3, top: AppSize.mainSize3),
                          child: Image.asset(AppImage.appCall),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.mainSize22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    AppString.textYourOrder,
                    style: TextStyle(
                      color: AppColor.colorBlack_two,
                      fontSize: AppSize.mainSize16,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      AppString.textDownloadInvoice,
                      style: TextStyle(
                        color: AppColor.colorPrimary_two,
                        fontSize: AppSize.mainSize16,
                        fontFamily: AppFonts.avenirRegular,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
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
                height: AppSize.mainSize11,
              ),
              Row(
                children: const [
                  Text(
                    AppString.textDiscount,
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
                    AppString.textDiscountCode,
                    style: TextStyle(
                      color: AppColor.colorBlack_two,
                      fontSize: AppSize.mainSize14,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    AppString.textDiscountAmount,
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
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      AppString.textRemoveCodeChangeCode,
                      style: TextStyle(
                        color: AppColor.colorPrimary_two,
                        fontSize: AppSize.mainSize14,
                        fontFamily: AppFonts.avenirRegular,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.mainSize13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    AppString.textGrandTotal,
                    style: TextStyle(
                      color: AppColor.colorBlack_two,
                      fontSize: AppSize.mainSize14,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    AppString.textGrandAmount,
                    style: TextStyle(
                      color: AppColor.colorPrimary_two,
                      fontSize: AppSize.mainSize14,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.mainSize33,
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
                height: AppSize.mainSize22,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
