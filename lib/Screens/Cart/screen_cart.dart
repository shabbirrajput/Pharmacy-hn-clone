import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Screens/PlaceOrder/screen_place_order.dart';
import 'package:pharmacy_hn_clone/category/category_model.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenCart extends StatefulWidget {
  const ScreenCart({Key? key}) : super(key: key);

  @override
  State<ScreenCart> createState() => _ScreenCartState();
}

class _ScreenCartState extends State<ScreenCart> {
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
              AppString.textMyCart,
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
            top: AppSize.mainSize16,
            left: AppSize.mainSize16,
            right: AppSize.mainSize16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(bottom: AppSize.mainSize30),
                      child: Column(
                        children: [
                          Card(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: AppSize.mainSize100,
                                  width: AppSize.mainSize100,
                                  child: Image.asset(catitems()[index].image!),
                                ),
                                const SizedBox(
                                  width: AppSize.mainSize16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      catitems()[index].name!,
                                      style: const TextStyle(
                                          fontSize: AppSize.mainSize14,
                                          color: AppColor.colorBlack_two,
                                          fontFamily: AppFonts.avenirRegular,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Text(
                                      "\$${catitems()[index].price!}",
                                      style: const TextStyle(
                                        color: AppColor.colorPrimary_two,
                                        fontFamily: AppFonts.avenirRegular,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 110,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: AppColor.colorCoolGrey),
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              InkWell(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    AppImage.appRemove,
                                                    height: 10,
                                                    width: 10,
                                                  )),
                                              const VerticalDivider(
                                                color: AppColor.colorCoolGrey,
                                                thickness: 1,
                                              ),
                                              Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 3),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 3,
                                                        vertical: 2),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3),
                                                    color: Colors.white),
                                                child: Text(
                                                  '3',
                                                  style: getTextStyle(
                                                      AppFonts.regular,
                                                      AppSize.textSize20),
                                                ),
                                              ),
                                              const VerticalDivider(
                                                color: AppColor.colorCoolGrey,
                                                thickness: 1,
                                              ),
                                              InkWell(
                                                  onTap: () {},
                                                  child: Image.asset(
                                                    AppImage.appAdd,
                                                    height: 10,
                                                    width: 10,
                                                  )),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: AppSize.mainSize73,
                                        ),
                                        Container(
                                          height: AppSize.mainSize37,
                                          width: AppSize.mainSize37,
                                          decoration: BoxDecoration(
                                            color: AppColor.colorCoral,
                                            borderRadius: BorderRadius.circular(
                                                AppSize.mainSize19),
                                          ),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Image.asset(
                                                  AppImage.appDelete)),
                                        ),
                                        const SizedBox(
                                          width: 16,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: AppSize.mainSize43,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: catitems().length),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  AppString.textSubtotal,
                  style: TextStyle(
                    color: AppColor.colorBlack_two,
                    fontFamily: AppFonts.avenirRegular,
                    fontSize: AppSize.mainSize14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  AppString.textSubtotalAmount,
                  style: TextStyle(
                    color: AppColor.colorPrimary_two,
                    fontFamily: AppFonts.avenirRegular,
                    fontSize: AppSize.mainSize14,
                    fontWeight: FontWeight.w900,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: AppSize.mainSize31,
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
                      AppString.textShareMyCart,
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScreenPlaceOrder(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) => AppColor.colorPrimary,
                      ),
                    ),
                    child: const Text(
                      AppString.textOrderNow,
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
              height: AppSize.mainSize136,
            ),
          ],
        ),
      ),
    );
  }
}
