import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/category/category_model.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class TabAddProducts extends StatefulWidget {
  const TabAddProducts({Key? key}) : super(key: key);

  @override
  State<TabAddProducts> createState() => _TabAddProductsState();
}

class _TabAddProductsState extends State<TabAddProducts> {
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
                  return Column(
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
                itemCount: catitems().length),
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
                      return SizedBox(
                        height: AppSize.mainSize500,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(
                                height: AppSize.mainSize24,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: AppSize.mainSize16),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: AppSize.mainSize20),
                                  child: TextFormField(
                                    keyboardType: TextInputType.multiline,
                                    style: const TextStyle(
                                        color: AppColor.colorBlack_two),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: AppSize.mainSize20),
                                  child: TextFormField(
                                    keyboardType: TextInputType.multiline,
                                    style: const TextStyle(
                                        color: AppColor.colorBlack_two),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: AppSize.mainSize20),
                                  child: TextFormField(
                                    keyboardType: TextInputType.multiline,
                                    style: const TextStyle(
                                        color: AppColor.colorBlack_two),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: AppSize.mainSize20),
                                  child: TextFormField(
                                    keyboardType: TextInputType.multiline,
                                    style: const TextStyle(
                                        color: AppColor.colorBlack_two),
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
                              const SizedBox(
                                height: AppSize.mainSize18,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: AppSize.mainSize20),
                                child: Row(
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
                                          backgroundColor: MaterialStateProperty
                                              .resolveWith<Color?>(
                                            (Set<MaterialState> states) =>
                                                AppColor.colorPrimary,
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
