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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            onPressed: () {},
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
