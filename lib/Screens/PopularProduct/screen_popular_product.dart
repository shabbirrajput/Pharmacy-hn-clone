import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Screens/Cart/screen_cart.dart';
import 'package:pharmacy_hn_clone/Screens/ProductDetails/screen_product_details.dart';
import 'package:pharmacy_hn_clone/category/category_model.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenPopularProduct extends StatefulWidget {
  const ScreenPopularProduct({Key? key}) : super(key: key);

  @override
  State<ScreenPopularProduct> createState() => _ScreenPopularProductState();
}

class _ScreenPopularProductState extends State<ScreenPopularProduct> {
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
              AppString.textPopularProduct,
              style: TextStyle(
                color: AppColor.colorWhite,
                fontFamily: AppFonts.avenirRegular,
                fontSize: AppSize.mainSize18,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              width: AppSize.mainSize63,
            ),
            IconButton(
              icon: Image.asset(AppImage.appSetting),
              onPressed: () {},
            ),
            const SizedBox(
              width: AppSize.mainSize12,
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
      body: SizedBox(
        height: AppSize.mainSize500,
        child: GridView.builder(
            padding: const EdgeInsets.only(top: AppSize.mainSize20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
            ),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: catitems().length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                height: 300,
                margin: const EdgeInsets.only(
                  left: 4,
                  right: 4,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScreenProductDetails(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.mainSize24),
                    child: Column(
                      children: [
                        Image.asset(
                          catitems()[index].image!,
                          height: AppSize.mainSize130,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            catitems()[index].name!,
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
                            "\$${catitems()[index].price!}",
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
