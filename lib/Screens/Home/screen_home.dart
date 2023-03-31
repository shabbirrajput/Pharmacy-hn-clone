import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Screens/PopularProduct/screen_popular_product.dart';
import 'package:pharmacy_hn_clone/Screens/RecommendedProduct/screen_recommended_product.dart';
import 'package:pharmacy_hn_clone/category/category_model.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenHome extends StatefulWidget {
  final Function viewAllCategory;

  const ScreenHome({Key? key, required this.viewAllCategory}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
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
            padding: const EdgeInsets.symmetric(horizontal: AppSize.mainSize16),
            child: Row(
              children: [
                const SizedBox(
                  height: AppSize.mainSize24,
                ),
                const Text(
                  AppString.textCategory,
                  style: TextStyle(
                      fontSize: AppSize.mainSize18, color: AppColor.colorBlack),
                ),
                const SizedBox(
                  width: AppSize.mainSize138,
                ),
                InkWell(
                  child: const Text(
                    AppString.textViewAllCategory,
                    style: TextStyle(
                        fontSize: AppSize.mainSize18,
                        color: AppColor.colorPrimary_two),
                  ),
                  onTap: () {
                    widget.viewAllCategory();
                  },
                ),
                const SizedBox(
                  height: AppSize.mainSize13,
                ),
              ],
            ),
          ),
          SizedBox(
            height: AppSize.mainSize150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: AppSize.mainSize100,
                        width: AppSize.mainSize100,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(items()[index].image!),
                          fit: BoxFit.fill,
                        )),
                      ),
                      Text(
                        items()[index].name!,
                        style: const TextStyle(
                          fontSize: AppSize.mainSize14,
                          fontFamily: AppFonts.avenirRegular,
                          color: AppColor.colorBlack_two,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  );
                },
                itemCount: items().length),
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
                    fontFamily: AppFonts.avenirRegular,
                    color: AppColor.colorBlack,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: AppSize.mainSize400,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
                // scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: catitems().length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    height: AppSize.mainSize300,
                    margin: const EdgeInsets.only(
                      left: 4,
                      right: 4,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppSize.mainSize24),
                      child: Column(
                        children: [
                          Image.asset(
                            catitems()[index].image!,
                            height: AppSize.mainSize130,
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              catitems()[index].name!,
                              style: const TextStyle(
                                fontSize: AppSize.mainSize14,
                                color: AppColor.colorBlack_two,
                                fontFamily: AppFonts.avenirRegular,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "\$${catitems()[index].price!}",
                              textAlign: TextAlign.start,
                              style: const TextStyle(
                                color: AppColor.colorPrimary_two,
                                fontFamily: AppFonts.avenirRegular,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenPopularProduct(),
                ),
              );
            },
            child: const Text(
              AppString.textViewMore,
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColor.colorPrimary_two),
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
                AppString.textRecommendProduct,
                style: TextStyle(
                    fontSize: AppSize.mainSize18,
                    fontFamily: AppFonts.avenirRegular,
                    color: AppColor.colorBlack,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: AppSize.mainSize400,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: citems().length,
                itemBuilder: (BuildContext ctx, index) {
                  return Card(
                    elevation: 0,
                    child: Container(
                      height: 300,
                      margin: const EdgeInsets.only(
                        left: 4,
                        right: 4,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppSize.mainSize24),
                        child: Column(
                          children: [
                            Image.asset(
                              citems()[index].image!,
                              height: AppSize.mainSize120,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                citems()[index].name!,
                                style: const TextStyle(
                                  fontSize: AppSize.mainSize14,
                                  color: AppColor.colorBlack_two,
                                  fontFamily: AppFonts.avenirRegular,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "\$${citems()[index].price!}",
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                  color: AppColor.colorPrimary_two,
                                  fontFamily: AppFonts.avenirRegular,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ScreenRecommendedProduct(),
                ),
              );
            },
            child: const Text(
              AppString.textViewMore,
              textAlign: TextAlign.center,
              style: TextStyle(color: AppColor.colorPrimary_two),
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
                AppString.textLatestNewsAndBlog,
                style: TextStyle(
                    fontSize: AppSize.mainSize18,
                    fontFamily: AppFonts.avenirRegular,
                    color: AppColor.colorBlack,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: AppSize.mainSize200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                  elevation: 1,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: AppSize.mainSize130,
                            width: AppSize.mainSize234,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(AppImage.appTablets),
                              fit: BoxFit.fill,
                            )),
                          ),
                          const Text(
                            AppString.textLoremIpsum,
                            style: TextStyle(
                                fontSize: AppSize.mainSize14,
                                fontFamily: AppFonts.avenirRegular,
                                color: AppColor.colorBlack_two),
                          ),
                          Row(
                            children: const [
                              Text(
                                AppString.textCategoryName,
                                textAlign: TextAlign.left,
                                style: TextStyle(color: AppColor.colorCoolGrey),
                              ),
                              SizedBox(
                                width: AppSize.mainSize43,
                              ),
                              Text(
                                AppString.text1HoursAgo,
                                textAlign: TextAlign.right,
                                style: TextStyle(color: AppColor.colorCoolGrey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: AppSize.mainSize16,
                      ),
                      Column(
                        children: [
                          Container(
                            height: AppSize.mainSize130,
                            width: AppSize.mainSize234,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(AppImage.appTablets),
                              fit: BoxFit.fill,
                            )),
                          ),
                          const Text(
                            AppString.textLoremIpsum,
                            style: TextStyle(
                                fontSize: AppSize.mainSize14,
                                fontFamily: AppFonts.avenirRegular,
                                color: AppColor.colorBlack_two),
                          ),
                          Row(
                            children: const [
                              Text(
                                AppString.textCategoryName,
                                textAlign: TextAlign.left,
                                style: TextStyle(color: AppColor.colorCoolGrey),
                              ),
                              SizedBox(
                                width: AppSize.mainSize43,
                              ),
                              Text(
                                AppString.text1HoursAgo,
                                textAlign: TextAlign.right,
                                style: TextStyle(color: AppColor.colorCoolGrey),
                              ),
                            ],
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
            height: AppSize.mainSize25,
          ),
          const Text(
            AppString.textViewMore,
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColor.colorPrimary_two),
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
                AppString.textOurInstagramFeed,
                style: TextStyle(
                    fontSize: AppSize.mainSize18,
                    fontFamily: AppFonts.avenirRegular,
                    color: AppColor.colorBlack,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: AppSize.mainSize13, left: AppSize.mainSize16),
            child: SizedBox(
                height: AppSize.mainSize140,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: AppSize.mainSize100,
                          width: AppSize.mainSize100,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(AppImage.appDiscount1),
                            fit: BoxFit.fill,
                          )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: AppSize.mainSize16,
                    ),
                    Column(
                      children: [
                        Container(
                          height: AppSize.mainSize100,
                          width: AppSize.mainSize100,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(AppImage.appHurrah),
                            fit: BoxFit.fill,
                          )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: AppSize.mainSize16,
                    ),
                    Column(
                      children: [
                        Container(
                          height: AppSize.mainSize100,
                          width: AppSize.mainSize100,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(AppImage.appDiscount1),
                            fit: BoxFit.fill,
                          )),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(
                left: AppSize.mainSize16, bottom: AppSize.mainSize17),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                AppString.textFollowUsOn,
                style: TextStyle(
                    fontSize: AppSize.mainSize18,
                    fontFamily: AppFonts.avenirRegular,
                    color: AppColor.colorBlack,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.mainSize16),
            child: Wrap(
              children: [
                SizedBox(
                  height: AppSize.mainSize68,
                  width: AppSize.mainSize68,
                  child: Image.asset(AppImage.appFacebook),
                ),
                SizedBox(
                  height: AppSize.mainSize68,
                  width: AppSize.mainSize68,
                  child: Image.asset(AppImage.appYoutube),
                ),
                SizedBox(
                  height: AppSize.mainSize68,
                  width: AppSize.mainSize68,
                  child: Image.asset(AppImage.appInstagram),
                ),
                SizedBox(
                  height: AppSize.mainSize68,
                  width: AppSize.mainSize68,
                  child: Image.asset(AppImage.appGmail),
                ),
                SizedBox(
                  height: AppSize.mainSize68,
                  width: AppSize.mainSize68,
                  child: Image.asset(AppImage.appWhatsApp),
                ),
                SizedBox(
                  height: AppSize.mainSize68,
                  width: AppSize.mainSize68,
                  child: Image.asset(AppImage.appMessenger),
                ),
                SizedBox(
                  height: AppSize.mainSize68,
                  width: AppSize.mainSize68,
                  child: Image.asset(AppImage.appTiktok),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
