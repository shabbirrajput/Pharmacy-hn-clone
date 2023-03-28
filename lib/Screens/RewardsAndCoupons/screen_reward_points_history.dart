import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/category/category_model.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenRewardPointsHistory extends StatefulWidget {
  const ScreenRewardPointsHistory({Key? key}) : super(key: key);

  @override
  State<ScreenRewardPointsHistory> createState() =>
      _ScreenRewardPointsHistoryState();
}

class _ScreenRewardPointsHistoryState extends State<ScreenRewardPointsHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppString.textRewardPointsHistory,
          style: TextStyle(
              color: AppColor.colorWhite_two,
              fontSize: AppSize.mainSize18,
              fontFamily: AppFonts.avenirRegular,
              fontWeight: FontWeight.w900),
        ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColor.colorWhite_two),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: AppColor.colorPrimary_two,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            top: AppSize.mainSize29,
            left: AppSize.mainSize30,
            right: AppSize.mainSize30),
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: ritems().length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 0,
                child: Column(
                  children: [
                    const SizedBox(
                      height: AppSize.mainSize33,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ritems()[index].nname!,
                          style: const TextStyle(
                              color: AppColor.colorBlack_two,
                              fontSize: AppSize.mainSize14,
                              fontFamily: AppFonts.avenirRegular,
                              fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        Text(
                          index == 2 || index == 3 ? "-5000" : "+50",
                          style: TextStyle(
                              color: index == 2 || index == 3
                                  ? AppColor.colorRed
                                  : AppColor.colorPrimary_two,
                              fontSize: AppSize.mainSize16,
                              fontFamily: AppFonts.avenirRegular,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          ritems()[index].ntime!,
                          style: const TextStyle(
                              color: AppColor.colorCoolGrey,
                              fontFamily: AppFonts.avenirRegular),
                        ),
                      ],
                    ),
                    // const SizedBox(
                    //   height: AppSize.mainSize33,
                    // ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
