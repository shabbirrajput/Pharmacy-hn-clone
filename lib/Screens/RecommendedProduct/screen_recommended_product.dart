import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/category/category_model.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenRecommendedProduct extends StatefulWidget {
  const ScreenRecommendedProduct({Key? key}) : super(key: key);

  @override
  State<ScreenRecommendedProduct> createState() =>
      _ScreenRecommendedProductState();
}

class _ScreenRecommendedProductState extends State<ScreenRecommendedProduct> {
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
          children: [
            const Text(
              AppString.textRecommendProduct,
              style: TextStyle(
                color: AppColor.colorWhite,
                fontFamily: AppFonts.avenirRegular,
                fontSize: AppSize.mainSize18,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              width: 25,
            ),
            IconButton(
              icon: Image.asset(AppImage.appSetting),
              onPressed: () {},
            ),
            const SizedBox(
              width: 10,
            ),
            IconButton(
              icon: Image.asset(AppImage.appCart),
              onPressed: () {},
            ),
          ],
        ),
        elevation: 0,
      ),
      body: SizedBox(
        height: AppSize.mainSize400,
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
            ),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: citems().length,
            itemBuilder: (BuildContext ctx, index) {
              return Card(
                elevation: 0,
                child: Container(
                  height: 300,
                  margin: const EdgeInsets.only(
                    left: 4,
                    right: 4,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.mainSize24),
                    child: Column(
                      children: [
                        Image.asset(
                          citems()[index].image!,
                          height: AppSize.mainSize122,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            citems()[index].name!,
                            style: const TextStyle(
                              fontSize: AppSize.mainSize14,
                              color: AppColor.colorBlack_two,
                              fontFamily: AppFonts.avenirRegular,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "\$${citems()[index].price!}",
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                              color: AppColor.colorPrimary_two,
                              fontFamily: AppFonts.avenirRegular,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
