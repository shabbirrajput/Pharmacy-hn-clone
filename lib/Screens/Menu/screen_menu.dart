import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

final List<String> imgList = ['assets/images/wine.png'];

class ScreenMenu extends StatefulWidget {
  const ScreenMenu({Key? key}) : super(key: key);

  @override
  State<ScreenMenu> createState() => _ScreenMenuState();
}

class _ScreenMenuState extends State<ScreenMenu> {
  late var _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.colorPrimary_two,
        title: Row(
          children: const [
            Text(AppString.textPharmacy),
          ],
        ),
        actions: [
          SizedBox(
            height: 1,
            width: 91,
            child: OutlinedButton.icon(
              icon: Image.asset(AppImage.appDiscount),
              label: const Text(
                AppString.textDeals,
                style: TextStyle(
                    color: AppColor.colorBlack,
                    fontFamily: AppFonts.avenirRegular),
              ),
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColor.colorWhite_three),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0))),
              ),
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
      drawer: Drawer(
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: AppSize.mainSize60,
              color: AppColor.colorPrimary_two,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSize.mainSize16),
                child: TextField(
                  style: TextStyle(color: AppColor.colorBlack_two),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: AppColor.colorWhite_three,
                      border: InputBorder.none,
                      hintText: AppString.textSearch,
                      hintStyle: TextStyle(
                          color: AppColor.colorCoolGrey,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
              height: 200,
              color: Colors.transparent,
              width: double.infinity,
              child: CarouselSlider(
                options: CarouselOptions(height: 400.0),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration:
                              const BoxDecoration(color: Colors.transparent),
                          child: Image.asset(AppImage.appHomeImg));
                    },
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSize.mainSize16),
              child: Row(
                children: [
                  const SizedBox(
                    height: AppSize.mainSize24,
                  ),
                  const Text(
                    AppString.textCategory,
                    style: TextStyle(
                        fontSize: AppSize.mainSize18,
                        color: AppColor.colorBlack),
                  ),
                  const SizedBox(
                    width: 138,
                  ),
                  InkWell(
                    child: const Text(
                      AppString.textViewAllCategory,
                      style: TextStyle(
                          fontSize: AppSize.mainSize18,
                          color: AppColor.colorPrimary_two),
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: AppSize.mainSize13,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(AppImage.appWine),
                      fit: BoxFit.fill,
                    )),
                    child: const Text(
                      AppString.textWineLiqour,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
