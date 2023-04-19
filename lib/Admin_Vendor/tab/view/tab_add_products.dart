import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharmacy_hn_clone/Admin_Vendor/tab/view/add_product_sheet.dart';
import 'package:pharmacy_hn_clone/Db/comHelper.dart';
import 'package:pharmacy_hn_clone/Db/db_helper.dart';
import 'package:pharmacy_hn_clone/Db/user_model.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_config.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TabAddProducts extends StatefulWidget {
  const TabAddProducts({Key? key}) : super(key: key);

  @override
  State<TabAddProducts> createState() => _TabAddProductsState();
}

class _TabAddProductsState extends State<TabAddProducts> {
  var dbHelper;
  List<ProductModel> mProductModel = [];

  @override
  void initState() {
    initData();
    super.initState();
  }

  void initData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    dbHelper = DbHelper();
    mProductModel =
        await dbHelper.getUserProduct(sp.getInt(AppConfig.textUserId));
    print('object--mProductModel---${mProductModel.length}');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  ProductModel item = mProductModel[index];
                  return Column(
                    children: [
                      Card(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: AppSize.mainSize100,
                              width: AppSize.mainSize100,
                              child: Image.network(item.productImage!),
                            ),
                            const SizedBox(
                              width: AppSize.mainSize16,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.productName!,
                                  style: const TextStyle(
                                      fontSize: AppSize.mainSize14,
                                      color: AppColor.colorBlack_two,
                                      fontFamily: AppFonts.avenirRegular,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  "\$${item.productPrice!}",
                                  style: const TextStyle(
                                    color: AppColor.colorPrimary_two,
                                    fontFamily: AppFonts.avenirRegular,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      AppString.textQty,
                                      style: TextStyle(
                                        color: AppColor.colorCoolGrey,
                                        fontFamily: AppFonts.avenirRegular,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const Text(
                                      AppString.text1,
                                      style: TextStyle(
                                        color: AppColor.colorCoolGrey,
                                        fontFamily: AppFonts.avenirRegular,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: AppSize.mainSize10,
                                    ),
                                    const Text(
                                      AppString.textEdit,
                                      style: TextStyle(
                                        color: AppColor.colorCoolGrey,
                                        fontFamily: AppFonts.avenirRegular,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.edit)),
                                    const SizedBox(
                                      width: AppSize.mainSize50,
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
                                          icon:
                                              Image.asset(AppImage.appDelete)),
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
                  );
                },
                itemCount: mProductModel.length),
          ),
          const SizedBox(
            height: AppSize.mainSize136,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  showModalBottomSheet<void>(
                    isScrollControlled: true,
                    context: context,
                    builder: (BuildContext context) {
                      return AddProductSheet(
                        onProductAdd: () {
                          initData();
                          Navigator.pop(context);
                          alertDialog("Successfully Saved");
                        },
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  shape: const CircleBorder(),
                  backgroundColor: AppColor.colorPrimary_two,
                  padding: const EdgeInsets.all(20),
                ),
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: AppSize.mainSize16,
          )
        ],
      ),
    );
  }
}
