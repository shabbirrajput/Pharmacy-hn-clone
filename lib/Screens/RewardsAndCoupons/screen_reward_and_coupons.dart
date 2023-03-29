import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Screens/Menu/screen_menu.dart';
import 'package:pharmacy_hn_clone/Screens/RewardsAndCoupons/screen_reward_points_history.dart';
import 'package:pharmacy_hn_clone/Screens/ScreenNotification/screen_notification.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenRewardsAndCoupons extends StatefulWidget {
  const ScreenRewardsAndCoupons({Key? key}) : super(key: key);

  @override
  State<ScreenRewardsAndCoupons> createState() =>
      _ScreenRewardsAndCouponsState();
}

class _ScreenRewardsAndCouponsState extends State<ScreenRewardsAndCoupons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: AppSize.mainSize16,
          right: AppSize.mainSize16,
          top: AppSize.mainSize23,
          bottom: AppSize.mainSize27),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                AppString.textRewardPoints,
                style: TextStyle(
                    color: AppColor.colorBlack,
                    fontSize: AppSize.mainSize18,
                    fontFamily: AppFonts.avenirRegular,
                    fontWeight: FontWeight.w500),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenRewardPointsHistory(),
                    ),
                  );
                },
                child: const Text(
                  AppString.textViewHistory,
                  style: TextStyle(
                      color: AppColor.colorPrimary_two,
                      fontSize: AppSize.mainSize14,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: AppSize.mainSize13,
          ),
          Container(
            padding: const EdgeInsets.only(top: AppSize.mainSize13),
            alignment: Alignment.topCenter,
            child: Stack(children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(AppImage.appRewardsBg)),
              ),
              Row(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(AppImage.appRewardsBadge)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: AppSize.mainSize33,
                      ),
                      Row(
                        children: const [
                          Text(
                            AppString.text1000,
                            style: TextStyle(
                                fontFamily: AppFonts.avenirRegular,
                                color: AppColor.colorPrimary_two,
                                fontSize: AppSize.mainSize30,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            AppString.textCurrentRewardPoints,
                            style: TextStyle(
                                fontFamily: AppFonts.avenirRegular,
                                color: AppColor.colorBlack_two,
                                fontSize: AppSize.mainSize14,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppSize.mainSize27,
                      ),
                    ],
                  )
                  // Column(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.only(
                  //         top: AppSize.mainSize17,
                  //       ),
                  //       child: Row(
                  //         children: const [
                  //           Text(
                  //             AppString.text1000,
                  //             style: TextStyle(
                  //                 fontFamily: AppFonts.avenirRegular,
                  //                 color: AppColor.colorPrimary_two,
                  //                 fontSize: AppSize.mainSize30,
                  //                 fontWeight: FontWeight.w900),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //     Padding(
                  //       padding: const EdgeInsets.only(
                  //           top: AppSize.mainSize2, left: AppSize.mainSize30),
                  //       child: Row(
                  //         children: const [
                  //           Text(
                  //             AppString.textCurrentRewardPoints,
                  //             style: TextStyle(
                  //                 fontFamily: AppFonts.avenirRegular,
                  //                 color: AppColor.colorBlack_two,
                  //                 fontSize: AppSize.mainSize14,
                  //                 fontWeight: FontWeight.w500),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // )
                ],
              ),
            ]),
          ),
          // Image.asset(AppImage.appRewardsBg),
          Container(
            padding: const EdgeInsets.only(left: AppSize.mainSize30),
            child: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                AppString.text100Points1Dollar,
                style: TextStyle(
                    fontFamily: AppFonts.avenirRegular,
                    color: AppColor.colorBlack_two,
                    fontSize: AppSize.mainSize14,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: AppSize.mainSize16,
                right: AppSize.mainSize16,
                top: AppSize.mainSize37),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      AppString.textCoupons,
                      style: TextStyle(
                          fontFamily: AppFonts.avenirRegular,
                          color: AppColor.colorBlack,
                          fontSize: AppSize.mainSize18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSize.mainSize13,
                ),
                Container(
                    height: 55,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          AppColor.colorBrightSkyBlue,
                          AppColor.colorCornFlowerBlue,
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 24,
                          // margin: EdgeInsets.only(
                          //   left: 284,
                          //   right: 284,
                          // ),
                          decoration: BoxDecoration(
                            color: Color(0xffff3838),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
