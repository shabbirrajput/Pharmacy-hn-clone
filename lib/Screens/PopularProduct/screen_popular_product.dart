// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Db/db_helper.dart';
import 'package:pharmacy_hn_clone/Db/user_model.dart';
import 'package:pharmacy_hn_clone/Screens/Cart/screen_cart.dart';
import 'package:pharmacy_hn_clone/Screens/ProductDetails/screen_product_details.dart';
import 'package:pharmacy_hn_clone/category/model/model_category.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenPopularProduct extends StatefulWidget {
  final Category mCategory;

  const ScreenPopularProduct({Key? key, required this.mCategory})
      : super(key: key);

  @override
  State<ScreenPopularProduct> createState() => _ScreenPopularProductState();
}

class _ScreenPopularProductState extends State<ScreenPopularProduct> {
  late DbHelper dbHelper;
  List<ProductModel> mProductModel = [];

  @override
  void initState() {
    initData();
    super.initState();
  }

  void initData() async {
    if (widget.mCategory.id != null) {
      dbHelper = DbHelper();
      mProductModel = await dbHelper.getCategoryProduct(widget.mCategory.id!);
      setState(() {});
    } else {
      dbHelper = DbHelper();
      mProductModel = await dbHelper.getPopularProduct();
      setState(() {});
    }
  }

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
            Text(
              widget.mCategory.id != null
                  ? widget.mCategory.name!
                  : AppString.textPopularProduct,
              style: const TextStyle(
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
            itemCount: mProductModel.length,
            itemBuilder: (BuildContext ctx, index) {
              ProductModel item = mProductModel[index];
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
                        builder: (context) => ScreenProductDetails(
                          mProductModel: item,
                          onProductAddToCart: () {},
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.mainSize24),
                    child: Column(
                      children: [
                        Image.network(
                          item.productImage!,
                          height: AppSize.mainSize130,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            item.productName!,
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
                            "\$${item.productPrice!}",
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
