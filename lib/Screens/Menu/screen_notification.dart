import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenNotification extends StatefulWidget {
  const ScreenNotification({Key? key}) : super(key: key);

  @override
  State<ScreenNotification> createState() => _ScreenNotificationState();
}

class _ScreenNotificationState extends State<ScreenNotification> {
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
              Navigator.pop(context);
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
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset(
              AppImage.appRewardsAndCoupons,
              color: AppColor.colorPrimary_two,
            ),
            title: const Text(AppString.textRewardsAndCoupons),
            onTap: () {
              Navigator.pop(context);
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
      appBar: AppBar(
        backgroundColor: AppColor.colorPrimary_two,
        title: Row(
          children: const [
            Text(
              AppString.textNotification,
              style: TextStyle(
                  fontFamily: AppFonts.avenirRegular,
                  fontSize: AppSize.mainSize18),
            ),
          ],
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: 100,
              width: 95,
            ),
          ),
          IconButton(
            icon: Image.asset(AppImage.appCart),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      drawer: drawer,
      body: Padding(
        padding: const EdgeInsets.only(
            top: AppSize.mainSize29, left: AppSize.mainSize30),
        child: ListView(
          children: [
            Column(
              children: [
                Row(
                  children: const [
                    Text(
                      AppString.textEarnedRewardPoints,
                      style: TextStyle(
                          fontSize: AppSize.mainSize14,
                          fontFamily: AppFonts.avenirRegular,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      AppString.text1MinAgo,
                      style: TextStyle(
                          color: AppColor.colorCoolGrey,
                          fontFamily: AppFonts.avenirRegular),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
