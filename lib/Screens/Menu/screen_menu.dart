import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/category/category_model.dart';
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              height: 100,
              width: 95,
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
                  backgroundColor: MaterialStateProperty.all<Color>(
                      AppColor.colorWhite_three),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
                ),
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
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Card(
                    elevation: 0,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: AppSize.mainSize100,
                              width: AppSize.mainSize100,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(AppImage.appWine),
                                fit: BoxFit.fill,
                              )),
                            ),
                            const Text(
                              AppString.textWineLiqour,
                              style: TextStyle(
                                  fontSize: AppSize.mainSize14,
                                  color: AppColor.colorBlack_two),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: AppSize.mainSize100,
                              width: AppSize.mainSize100,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(AppImage.appVitamins),
                                fit: BoxFit.fill,
                              )),
                            ),
                            const Text(
                              AppString.textVitamins,
                              style: TextStyle(
                                  fontSize: AppSize.mainSize14,
                                  color: AppColor.colorBlack_two),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: AppSize.mainSize100,
                              width: AppSize.mainSize100,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(AppImage.appHealth),
                                fit: BoxFit.fill,
                              )),
                            ),
                            const Text(
                              AppString.textHealth,
                              style: TextStyle(
                                  fontSize: AppSize.mainSize14,
                                  color: AppColor.colorBlack_two),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: AppSize.mainSize100,
                              width: AppSize.mainSize100,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage(AppImage.appSkinCare),
                                fit: BoxFit.fill,
                              )),
                            ),
                            const Text(
                              AppString.textSkinCare,
                              style: TextStyle(
                                  fontSize: AppSize.mainSize14,
                                  color: AppColor.colorBlack_two),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSize.mainSize29,
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: AppSize.mainSize16, bottom: AppSize.mainSize17),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppString.textPopularProduct,
                  style: TextStyle(
                      fontSize: AppSize.mainSize18,
                      color: AppColor.colorBlack,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              height: 400,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 0,
                  ),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 4,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      height: 300,
                      margin: const EdgeInsets.only(
                        left: 4,
                        right: 4,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            AppImage.appDoritos,
                            height: 140,
                          ),

                          const Text(
                            AppString.textDoritosTangyCheeseCornChips,
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 14),
                          ),
                          const Text(
                            "\$${AppString.textPrice}",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: AppColor.colorPrimary_two,

                              // fontFamily: AppFonts.avenirRegular,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          // SizedBox(
                          //     height: 25,
                          //     width: 90,
                          //     child: ElevatedButton.icon(
                          //       onPressed:  () {
                          //
                          //       },
                          //       style: ElevatedButton.styleFrom(
                          //           backgroundColor: Colors.deepPurpleAccent),
                          //       icon: const Icon(Icons.shopping_cart),
                          //       label: const Text(
                          //         "Add",
                          //         style: TextStyle(color: Colors.white),
                          //       ), //label text
                          //     )),
                        ],
                      ),
                    );
                  }),
            ),
            const Text(
              AppString.textViewMore,
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColor.colorPrimary_two),
            )
          ],
        ),
      ),
    );
  }
}
