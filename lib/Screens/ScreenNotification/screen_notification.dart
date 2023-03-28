import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/category/category_model.dart';
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
      key: scaffoldKey,
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
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: nitems().length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 0,
                child: Column(
                  children: [
                    const SizedBox(
                      height: AppSize.mainSize33,
                    ),
                    Row(
                      children: [
                        Text(
                          nitems()[index].nname!,
                          style: TextStyle(
                              color: index == 0 || index == 1
                                  ? AppColor.colorBlack_two
                                  : AppColor.colorCoolGrey,
                              fontSize: AppSize.mainSize14,
                              fontFamily: AppFonts.avenirRegular,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          nitems()[index].ntime!,
                          style: const TextStyle(
                              color: AppColor.colorCoolGrey,
                              fontFamily: AppFonts.avenirRegular),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSize.mainSize33,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
