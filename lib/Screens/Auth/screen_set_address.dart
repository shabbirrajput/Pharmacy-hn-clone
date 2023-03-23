import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Screens/Menu/screen_menu.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenSetAddress extends StatefulWidget {
  const ScreenSetAddress({Key? key}) : super(key: key);

  @override
  State<ScreenSetAddress> createState() => _ScreenSetAddressState();
}

class _ScreenSetAddressState extends State<ScreenSetAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextField(
          style: TextStyle(color: AppColor.colorBlack_two),
          decoration: InputDecoration(
              filled: true,
              // fillColor: AppColor.colorWhite_three,
              border: InputBorder.none,
              hintText: AppString.textSearchCity,
              hintStyle: TextStyle(
                  color: AppColor.colorCoolGrey, fontWeight: FontWeight.w500)),
        ),
        //
        // const Text(
        //   AppString.textSearchCity,
        //   style: TextStyle(
        //     color: AppColor.colorCoolGrey,
        //     fontSize: 16,
        //     fontFamily: AppFonts.avenirRegular,
        //     fontWeight: FontWeight.w500,
        //   ),
        // ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: AppColor.colorWhite_two,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Image.asset('assets/images/setAddress.png'),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset('assets/images/location.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    AppString.text841MontgomerySt,
                    style: TextStyle(
                      color: AppColor.colorBlack_two,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  // const SizedBox(
                  //   height: 1,
                  // ),
                ],
              ),
              // const Text(
              //   AppString.textJerseyCityNJ07306USA,
              //   style: TextStyle(
              //     color: AppColor.colorBlack_two,
              //     fontFamily: AppFonts.avenirRegular,
              //   ),
              // ),
              const SizedBox(
                height: AppSize.mainSize15,
              ),
              const TextField(
                style: TextStyle(color: AppColor.colorBlack_two),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.colorWhite_three,
                    border: InputBorder.none,
                    hintText: AppString.textAddAddressInformation,
                    hintStyle: TextStyle(
                        color: AppColor.colorCoolGrey,
                        fontWeight: FontWeight.w500)),
              ),
              const SizedBox(
                height: AppSize.mainSize8,
              ),
              const TextField(
                style: TextStyle(color: AppColor.colorBlack_two),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.colorWhite_three,
                    border: InputBorder.none,
                    hintText: AppString.textZipCodeOptional,
                    hintStyle: TextStyle(
                        color: AppColor.colorCoolGrey,
                        fontWeight: FontWeight.w500)),
              ),
              const SizedBox(
                height: AppSize.mainSize15,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  AppString.textThisAddressWillAppearAs,
                  // textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: AppSize.mainSize16,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.home_outlined),
                  ),
                  const Text(AppString.textHome),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.apartment),
                    color: AppColor.colorPrimary_two,
                  ),
                  Text(
                    AppString.textOffice,
                    style: getTextStyle(AppFonts.regular, AppSize.mainSize14),
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.family_restroom_outlined),
                  ),
                  const Text(AppString.textFamily),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.pin_drop_outlined),
                  ),
                  const Text(AppString.textOther),

                  // Image.asset(AppImage.appHome),
                  // const SizedBox(
                  //   width: AppSize.mainSize8,
                  // ),
                  // const Text(AppString.textHome),
                  // Image.asset(AppImage.appOffice),
                  // const SizedBox(
                  //   width: AppSize.mainSize8,
                  // ),
                  // const Text(AppString.textOffice),
                  // Image.asset(AppImage.appFamily),
                  // const SizedBox(
                  //   width: AppSize.mainSize8,
                  // ),
                  // const Text(AppString.textFamily),
                  // Image.asset(AppImage.appOther),
                  // const SizedBox(
                  //   width: AppSize.mainSize8,
                  // ),
                  // const Text(AppString.textOther),
                ],
              ),
              const SizedBox(
                height: AppSize.mainSize25,
              ),
              SizedBox(
                height: AppSize.mainSize46,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScreenMenu(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) => AppColor.colorPrimary,
                    ),
                  ),
                  child: const Text(
                    AppString.textSaveAndContinue,
                    style: TextStyle(
                        color: AppColor.colorWhite_two,
                        fontFamily: AppFonts.avenirRegular,
                        fontSize: AppSize.mainSize16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
