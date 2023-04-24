// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharmacy_hn_clone/Db/comHelper.dart';
import 'package:pharmacy_hn_clone/Db/db_helper.dart';
import 'package:pharmacy_hn_clone/Db/user_model.dart';
import 'package:pharmacy_hn_clone/category/model/model_category.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_config.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddProductSheet extends StatefulWidget {
  final Function onProductAdd;

  const AddProductSheet({Key? key, required this.onProductAdd})
      : super(key: key);

  @override
  State<AddProductSheet> createState() => _AddProductSheetState();
}

class _AddProductSheetState extends State<AddProductSheet> {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController productPriceController = TextEditingController();
  final TextEditingController productQtyController = TextEditingController();
  final TextEditingController productImageController = TextEditingController();
  final TextEditingController productDescController = TextEditingController();
  var dbHelper;

  @override
  void initState() {
    super.initState();
    readJson();

    // dbHelper = DbHelper();
  }

  addProduct() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    String productName = productNameController.text;
    String productPrice = productPriceController.text;
    String productQty = productQtyController.text;
    String productImage = productImageController.text;
    String productDesc = productDescController.text;

    if (productName.isEmpty) {
      alertDialog("Please Enter Product Name");
    } else if (productPrice.isEmpty) {
      alertDialog("Please Enter Product Price");
    } else if (productQty.isEmpty) {
      alertDialog("Please Enter Product Qty");
    } else if (productImage.isEmpty) {
      alertDialog("Please Enter Product Image");
    } else if (productDesc.isEmpty) {
      alertDialog("Please Enter Product Description");
    } else {
      ProductModel oModel = ProductModel();

      oModel.productName = productName;
      oModel.productPrice = int.parse(productPrice);
      oModel.productQty = int.parse(productQty);
      oModel.productImage = productImage;
      oModel.productDesc = productDesc;
      oModel.productCat = selectCategory.id;
      oModel.productUserId = sp.getInt(AppConfig.textUserId);

      dbHelper = DbHelper();
      await dbHelper.saveProductData(oModel).then((productData) {
        widget.onProductAdd();
      }).catchError((error) {
        alertDialog("Error: Data Save Fail--$error");
      });
    }
  }

  List<Category> catList = [];
  Category selectCategory = Category();

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/category.json');
    final data = await json.decode(response);

    ModelCategory tutorial = ModelCategory.fromJson(data);

    setState(() {
      catList = tutorial.category!;
      selectCategory = catList[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.mainSize600,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: AppSize.mainSize24,
            ),
            Padding(
              padding: const EdgeInsets.only(right: AppSize.mainSize16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        AppString.textAddProducts,
                        style: TextStyle(
                          color: AppColor.colorBlack_two,
                          fontSize: AppSize.mainSize20,
                          fontFamily: AppFonts.avenirRegular,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
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
              height: AppSize.mainSize24,
            ),
            SizedBox(
              height: AppSize.mainSize72,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.mainSize20),
                child: TextFormField(
                  controller: productNameController,
                  keyboardType: TextInputType.multiline,
                  style: const TextStyle(color: AppColor.colorBlack_two),
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: AppColor.colorWhite_three,
                      border: InputBorder.none,
                      hintText: AppString.textAddName,
                      hintStyle: TextStyle(
                          color: AppColor.colorCoolGrey,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
            SizedBox(
              height: AppSize.mainSize72,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.mainSize20),
                child: TextFormField(
                  controller: productPriceController,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: AppColor.colorBlack_two),
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: AppColor.colorWhite_three,
                      border: InputBorder.none,
                      hintText: AppString.textAddPrice,
                      hintStyle: TextStyle(
                          color: AppColor.colorCoolGrey,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
            SizedBox(
              height: AppSize.mainSize72,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.mainSize20),
                child: TextFormField(
                  controller: productQtyController,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(color: AppColor.colorBlack_two),
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: AppColor.colorWhite_three,
                      border: InputBorder.none,
                      hintText: AppString.textAddQty,
                      hintStyle: TextStyle(
                          color: AppColor.colorCoolGrey,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
            SizedBox(
              height: AppSize.mainSize72,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.mainSize20),
                child: TextFormField(
                  controller: productImageController,
                  keyboardType: TextInputType.multiline,
                  style: const TextStyle(color: AppColor.colorBlack_two),
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: AppColor.colorWhite_three,
                      border: InputBorder.none,
                      hintText: AppString.textAddImage,
                      hintStyle: TextStyle(
                          color: AppColor.colorCoolGrey,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
            SizedBox(
              height: AppSize.mainSize72,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.mainSize20),
                child: TextFormField(
                  controller: productDescController,
                  keyboardType: TextInputType.multiline,
                  style: const TextStyle(color: AppColor.colorBlack_two),
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: AppColor.colorWhite_three,
                      border: InputBorder.none,
                      hintText: AppString.textDesc,
                      hintStyle: TextStyle(
                          color: AppColor.colorCoolGrey,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  AppString.textSelectCategoryType,
                  style: TextStyle(
                    color: AppColor.colorPrimary_two,
                    fontFamily:
                        AppFonts.avenirRegular, /*fontWeight: FontWeight.w500*/
                  ),
                ),
                SizedBox(
                  height: AppSize.mainSize50,
                  width: AppSize.mainSize100,
                  child: DropdownButton<Category>(
                    // Step 3.
                    value: selectCategory,
                    isExpanded: true,
                    // Step 4.
                    items: catList
                        .map<DropdownMenuItem<Category>>((Category value) {
                      return DropdownMenuItem<Category>(
                        value: value,
                        child: Text(
                          value.name!,
                          style: const TextStyle(
                              color: AppColor.colorBlack_two,
                              fontSize: AppSize.mainSize20),
                        ),
                      );
                    }).toList(),
                    // Step 5.
                    onChanged: (Category? newValue) {
                      setState(() {
                        selectCategory = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),

            /* const SizedBox(
                                height: AppSize.mainSize72,
                                child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: AppSize.mainSize20),
                                    child: Text(
                                      AppString.textSelectCategoryType,
                                      style: TextStyle(
                                          color: AppColor.colorPrimary_two,
                                          fontSize: AppSize.mainSize16,
                                          fontFamily: AppFonts.avenirRegular,
                                          fontWeight: FontWeight.w500),
                                    )),
                              ),*/
            const SizedBox(
              height: AppSize.mainSize18,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSize.mainSize20),
              child: Row(
                children: [
                  SizedBox(
                    height: AppSize.mainSize46,
                    width: AppSize.mainSize170,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        disabledForegroundColor: AppColor.colorPrimary,
                        side: const BorderSide(color: AppColor.colorPrimary),
                      ),
                      child: const Text(
                        AppString.textCancel,
                        style: TextStyle(
                          color: AppColor.colorPrimary,
                          fontFamily: AppFonts.avenirRegular,
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
                      onPressed: () {
                        addProduct();
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) => AppColor.colorPrimary,
                        ),
                      ),
                      child: const Text(
                        AppString.textAdd,
                        style: TextStyle(
                          color: AppColor.colorWhite_two,
                          fontFamily: AppFonts.avenirRegular,
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
  }
}
