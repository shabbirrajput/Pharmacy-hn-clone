import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharmacy_hn_clone/category/model/model_category.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class AddProductSheet extends StatefulWidget {
  const AddProductSheet({Key? key}) : super(key: key);

  @override
  State<AddProductSheet> createState() => _AddProductSheetState();
}

class _AddProductSheetState extends State<AddProductSheet> {
  @override
  void initState() {
    super.initState();
    readJson();

    // dbHelper = DbHelper();
  }

  List<Category> catList = [];
  Category selectCategory = Category();

  Future<void> readJson() async {
    print('object-------------------------------------------------->');
    final String response =
        await rootBundle.loadString('assets/json/category.json');
    final data = await json.decode(response);

    ModelCategory tutorial = ModelCategory.fromJson(data);

    print("data---${data}");
    print(tutorial);

    /* Category tutorial = Category.fromJson(jsonDecode(response));
    category!.add(tutorial);
    print('Data---${category!.length}');*/

    setState(() {
      /// catList = data['category'].map((data) => Item.fromJson(data));
      catList = tutorial.category!;
      selectCategory = catList[0];

      print('catList---${catList.length}');
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
                  Expanded(
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
                  keyboardType: TextInputType.multiline,
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
                  keyboardType: TextInputType.multiline,
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(AppString.textSelectCategoryType),
                Container(
                  height: 50,
                  width: 200,
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
                          style: TextStyle(fontSize: 30),
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
                      onPressed: () {},
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
