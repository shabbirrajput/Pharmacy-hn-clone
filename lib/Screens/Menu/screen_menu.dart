import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Screens/Menu/screen_home.dart';
import 'package:pharmacy_hn_clone/Screens/RewardsAndCoupons/screen_reward_and_coupons.dart';
import 'package:pharmacy_hn_clone/Screens/ScreenNotification/screen_notification.dart';
import 'package:pharmacy_hn_clone/Screens/ViewAllCategory/screen_view_all_category.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

final List<String> imgList = ['assets/images/wine.png'];

int selectedIndex = 0;

class ScreenMenu extends StatefulWidget {
  const ScreenMenu({Key? key}) : super(key: key);

  @override
  State<ScreenMenu> createState() => _ScreenMenuState();
}

class _ScreenMenuState extends State<ScreenMenu> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

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
              _onItemTapped(0);
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
              _onItemTapped(1);
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
              _onItemTapped(2);
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
              _onItemTapped(3);
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
              _onItemTapped(4);
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
              _onItemTapped(5);
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
              _onItemTapped(6);
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
              _onItemTapped(7);
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
            Text(AppString.textPharmacy),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              height: 100,
              width: 95,
              child: selectedIndex == 0
                  ? OutlinedButton.icon(
                      icon: Image.asset(AppImage.appDiscount),
                      label: const Text(
                        AppString.textDeals,
                        style: TextStyle(
                            color: AppColor.colorBlack,
                            fontFamily: AppFonts.avenirRegular),
                      ),
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            AppColor.colorWhite_three),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0))),
                      ),
                    )
                  : const SizedBox(),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        elevation: 0,
      ),
      drawer: drawer,
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          ScreenHome(),
          ScreenViewAllCategory(),
          Center(child: Text('My Order')),
          Center(child: Text('My Wishlist')),
          Center(child: Text('My Profile')),
          ScreenNotification(),
          ScreenRewardsAndCoupons(),
          Center(child: Text('Settings')),
        ],
      ), // This,
    );
  }
}
