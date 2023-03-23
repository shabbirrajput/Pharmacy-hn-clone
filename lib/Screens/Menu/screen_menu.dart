import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenMenu extends StatefulWidget {
  const ScreenMenu({Key? key}) : super(key: key);

  @override
  State<ScreenMenu> createState() => _ScreenMenuState();
}

class _ScreenMenuState extends State<ScreenMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.colorPrimary_two,
      ),
      body: Container(
        color: AppColor.colorBlack_two,
      ),
      // appBar: AppBar(
      //   elevation: 0,
      //   leading: IconButton(
      //     icon: const Icon(Icons.arrow_back, color: Colors.black),
      //     onPressed: () => Navigator.of(context).pop(),
      //   ),
      //   backgroundColor: AppColor.colorPrimary_two,
      // ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
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
      ),
    );
  }
}
