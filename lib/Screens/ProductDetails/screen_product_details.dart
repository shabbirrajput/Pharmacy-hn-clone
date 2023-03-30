import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Screens/Cart/screen_cart.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenProductDetails extends StatefulWidget {
  const ScreenProductDetails({Key? key}) : super(key: key);

  @override
  State<ScreenProductDetails> createState() => _ScreenProductDetailsState();
}

class _ScreenProductDetailsState extends State<ScreenProductDetails> {
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                AppString.textProductDetail,
                style: TextStyle(
                  color: AppColor.colorWhite,
                  fontFamily: AppFonts.avenirRegular,
                  fontSize: AppSize.mainSize18,
                  fontWeight: FontWeight.w900,
                ),
              ),
              IconButton(
                icon: Image.asset(AppImage.appCart),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenCart(),
                    ),
                  );
                },
              ),
            ],
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.mainSize16),
            child: Column(
              children: [
                const SizedBox(
                  height: AppSize.mainSize16,
                ),
                Container(
                  height: AppSize.mainSize300,
                  alignment: Alignment.center,
                  child: Image.asset(AppImage.appHeadAndShoulders),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImage.appHS1),
                    Image.asset(AppImage.appHS2),
                    Image.asset(AppImage.appHS3),
                  ],
                ),
                const SizedBox(
                  height: AppSize.mainSize31,
                ),
                const Text(
                  AppString.textHSDetails,
                  style: TextStyle(
                      color: AppColor.colorBlack_two,
                      fontSize: AppSize.mainSize16,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: AppSize.mainSize14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: AppSize.mainSize46,
                      width: 177,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          disabledForegroundColor: AppColor.colorPrimary,
                          side: const BorderSide(color: AppColor.colorPrimary),
                        ),
                        child: const Text(
                          AppString.textAddToWishlist,
                          style: TextStyle(
                            color: AppColor.colorPrimary,
                            fontFamily: AppFonts.avenirRegular,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppSize.mainSize46,
                      width: 177,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.resolveWith<Color?>(
                            (Set<MaterialState> states) =>
                                AppColor.colorPrimary,
                          ),
                        ),
                        child: const Text(
                          AppString.textAddToCart,
                          style: TextStyle(
                            color: AppColor.colorWhite_two,
                            fontFamily: AppFonts.avenirRegular,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSize.mainSize15,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppString.textHSPrice,
                    style: TextStyle(
                      color: AppColor.colorPrimary_two,
                      fontSize: AppSize.mainSize24,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSize.mainSize28,
                ),
                Row(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppString.textSelectQty,
                        style: TextStyle(
                          color: AppColor.colorBlack_two,
                          fontSize: AppSize.mainSize16,
                          fontFamily: AppFonts.avenirRegular,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: AppSize.mainSize12,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: AppColor.colorCoolGrey),
                          color: AppColor.colorWhite_two),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {},
                              child: Image.asset(AppImage.appRemove)),
                          const SizedBox(
                            width: AppSize.mainSize18,
                          ),
                          const SizedBox(
                              height: 22,
                              child: VerticalDivider(
                                  color: AppColor.colorCoolGrey)),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 3),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 3, vertical: 2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.white),
                            child: const Text(
                              '0',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: AppSize.mainSize16),
                            ),
                          ),
                          const SizedBox(
                              height: 22,
                              child: VerticalDivider(
                                  color: AppColor.colorCoolGrey)),
                          const SizedBox(
                            width: AppSize.mainSize18,
                          ),
                          InkWell(
                              onTap: () {},
                              child: Image.asset(AppImage.appAdd)),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSize.mainSize31,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppString.textProductDetail,
                    style: TextStyle(
                      color: AppColor.colorBlack_two,
                      fontSize: AppSize.mainSize16,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSize.mainSize5,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    AppString.textLoremIpsum3,
                    style: TextStyle(
                      color: AppColor.colorCoolGrey,
                      fontSize: AppSize.mainSize16,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSize.mainSize21,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
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
                    const SizedBox(
                      width: AppSize.mainSize16,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(AppImage.appShare),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSize.mainSize110,
                )
              ],
            ),
          ),
        ));
  }
}
