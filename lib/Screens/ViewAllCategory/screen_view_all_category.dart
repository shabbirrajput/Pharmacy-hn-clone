import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Screens/Menu/screen_menu.dart';
import 'package:pharmacy_hn_clone/Screens/RewardsAndCoupons/screen_reward_and_coupons.dart';
import 'package:pharmacy_hn_clone/Screens/ScreenNotification/screen_notification.dart';
import 'package:pharmacy_hn_clone/category/category_model.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class ScreenViewAllCategory extends StatefulWidget {
  const ScreenViewAllCategory({Key? key}) : super(key: key);

  @override
  State<ScreenViewAllCategory> createState() => _ScreenViewAllCategoryState();
}

class _ScreenViewAllCategoryState extends State<ScreenViewAllCategory> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  String dropdownValue = list.first;

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(AppString.textPharmacy),
            IconButton(
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        elevation: 0,
      ),
      drawer: drawer,
      body: Card(
        child: Container(
          height: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: AppSize.mainSize100,
                          width: AppSize.mainSize100,
                          child: Image.asset(items()[index].image!),
                        ),
                        const SizedBox(
                          width: AppSize.mainSize16,
                        ),
                        Expanded(
                          child: Text(
                            items()[index].name!,
                            style: const TextStyle(
                                fontSize: AppSize.mainSize16,
                                color: AppColor.colorBlack_two,
                                fontFamily: AppFonts.avenirRegular,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                        IconButton(
                            // alignment: Alignment.centerRight,
                            onPressed: () {
                              DropdownButton<String>(
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_downward),
                                elevation: 16,
                                style:
                                    const TextStyle(color: Colors.deepPurple),
                                underline: Container(
                                  height: 2,
                                  color: Colors.deepPurpleAccent,
                                ),
                                onChanged: (String? value) {
                                  // This is called when the user selects an item.
                                  setState(() {
                                    dropdownValue = value!;
                                  });
                                },
                                items: list.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              );
                            },
                            icon: Image.asset(AppImage.appPlusCircle))
                      ],
                    ),
                  ],
                );
              },
              itemCount: items().length),
        ),
      ),
    );
  }
}
