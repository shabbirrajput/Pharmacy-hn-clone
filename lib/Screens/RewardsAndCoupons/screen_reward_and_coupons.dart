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
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Drawer drawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const SizedBox(
            height: AppSize.mainSize100,
          ),
          ListTile(
            leading: Image.asset(
              AppImage.appHome,
              color: AppColor.colorPrimary_two,
            ),
            title: const Text(AppString.textHome),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenMenu(),
                ),
              );
            },
          ),
          ListTile(
            leading: Image.asset(
              AppImage.appCategory,
              color: AppColor.colorPrimary_two,
            ),
            title: const Text(AppString.textAllCategory),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset(
              AppImage.appOrder,
              color: AppColor.colorPrimary_two,
            ),
            title: const Text(AppString.textMyOrder),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset(
              AppImage.appWishlist,
              color: AppColor.colorPrimary_two,
            ),
            title: const Text(AppString.textMyWishlist),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset(
              AppImage.appProfile,
              color: AppColor.colorPrimary_two,
            ),
            title: const Text(AppString.textMyProfile),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset(
              AppImage.appNotification,
              color: AppColor.colorPrimary_two,
            ),
            title: const Text(AppString.textNotification),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenNotification(),
                ),
              );
            },
          ),
          ListTile(
            leading: Image.asset(
              AppImage.appRewardsAndCoupons,
              color: AppColor.colorPrimary_two,
            ),
            title: const Text(AppString.textRewardsAndCoupons),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenRewardsAndCoupons(),
                ),
              );
            },
          ),
          ListTile(
            leading: Image.asset(
              AppImage.appSettings,
              color: AppColor.colorPrimary_two,
            ),
            title: const Text(AppString.textSettings),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
    return Scaffold(
      key: scaffoldKey,
      drawer: drawer,
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(AppImage.appDrawerIcon),
          onPressed: () {
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState!.openEndDrawer();
            } else {
              scaffoldKey.currentState!.openDrawer();
            }
          },
        ),
        backgroundColor: AppColor.colorPrimary_two,
        title: Row(
          children: [
            const Text(
              AppString.textRewardsAndCoupons,
              style: TextStyle(
                color: AppColor.colorWhite,
                fontFamily: AppFonts.avenirRegular,
                fontSize: AppSize.mainSize18,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            IconButton(
              icon: Image.asset(AppImage.appCart),
              onPressed: () {},
            ),
          ],
        ),
        elevation: 0,
      ),
      body: Padding(
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
              padding: const EdgeInsets.only(left: AppSize.mainSize16),
              child: Column(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
