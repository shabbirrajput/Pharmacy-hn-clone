import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Screens/Cart/screen_cart.dart';
import 'package:pharmacy_hn_clone/Screens/Home/screen_home.dart';
import 'package:pharmacy_hn_clone/Screens/Notification/screen_notification.dart';
import 'package:pharmacy_hn_clone/Screens/RewardsAndCoupons/screen_reward_and_coupons.dart';
import 'package:pharmacy_hn_clone/Screens/Splash/screen_splash.dart';
import 'package:pharmacy_hn_clone/Screens/ViewAllCategory/screen_view_all_category.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  void onLogout() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const ScreenSplash()),
        (Route<dynamic> route) => false);
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
            trailing: Container(
              alignment: Alignment.center,
              height: AppSize.mainSize20,
              width: AppSize.mainSize20,
              decoration: BoxDecoration(
                color: AppColor.colorGrapeFruit,
                borderRadius: BorderRadius.circular(AppSize.mainSize19),
              ),
              child: const Text(
                '2',
                style: TextStyle(color: AppColor.colorWhite),
              ),
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
              AppImage.appNewsAndBlogs,
              color: AppColor.colorPrimary_two,
            ),
            title: const Text(AppString.textNewsAndBlog),
            onTap: () {
              _onItemTapped(7);
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Image.asset(
              AppImage.appSettings,
              color: AppColor.colorPrimary_two,
            ),
            title: const Text(AppString.textLogout),
            onTap: () {
              showAlertDialog(context);

              /// alertDialogue('Are you Sure you want');

              /// _onItemTapped(8);
              // Navigator.pop(context);
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
            Text(AppString.textGrocery),
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
            icon: Image.asset(AppImage.appCart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenCart(),
                ),
              );
            },
          ),
        ],
        elevation: 0,
      ),
      drawer: drawer,
      body: IndexedStack(
        index: selectedIndex,
        children: [
          ScreenHome(
            viewAllCategory: () {
              setState(() {
                selectedIndex = 1;
              });
            },
          ),
          const ScreenViewAllCategory(),
          const Center(child: Text(AppString.textMyOrder)),
          const Center(child: Text(AppString.textMyWishlist)),
          const Center(child: Text(AppString.textMyProfile)),
          const ScreenNotification(),
          const ScreenRewardsAndCoupons(),
          const Center(child: Text(AppString.textNewsAndBlog)),
          const Center(child: Text(AppString.textSettings)),
        ],
      ), // This,
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = ElevatedButton(
      child: const Text("Cancel"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = ElevatedButton(
      child: const Text("log Out"),
      onPressed: () {
        onLogout();
        Navigator.pop(context);
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Log Out"),
      content: const Text("Are you sure you want to Log Out?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
