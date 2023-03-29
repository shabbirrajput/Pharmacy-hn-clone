import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/category/category_model.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenBathAndBody extends StatefulWidget {
  const ScreenBathAndBody({Key? key}) : super(key: key);

  @override
  State<ScreenBathAndBody> createState() => _ScreenBathAndBodyState();
}

class _ScreenBathAndBodyState extends State<ScreenBathAndBody> {
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
              AppString.textBathAndBody,
              style: TextStyle(
                color: AppColor.colorWhite,
                fontFamily: AppFonts.avenirRegular,
                fontSize: AppSize.mainSize18,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              width: 95,
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
            itemCount: pitems().length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                height: 300,
                margin: const EdgeInsets.only(
                  left: 4,
                  right: 4,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      pitems()[index].image!,
                      height: 130,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 27, right: 12),
                      child: Text(
                        pitems()[index].name!,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontSize: 14, fontFamily: AppFonts.avenirRegular),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 27, right: 12),
                      child: Align(
                        alignment: Alignment.centerLeft,
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
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
