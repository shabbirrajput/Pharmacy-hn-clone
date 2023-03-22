import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Screens/Auth/screen_forgot_password.dart';
import 'package:pharmacy_hn_clone/Screens/Auth/screen_otp_verification.dart';
import 'package:pharmacy_hn_clone/Screens/Auth/screen_registeration.dart';
import 'package:pharmacy_hn_clone/Screens/Menu/screen_menu.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: AppColor.colorWhite_two,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(AppSize.mainSize20,
              AppSize.mainSize10, AppSize.mainSize20, AppSize.mainSize18),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  AppString.textLogin,
                  style: TextStyle(
                      color: AppColor.colorBlack_two,
                      fontFamily: AppFonts.avenirHeavy,
                      fontSize: AppSize.mainSize24,
                      fontWeight: FontWeight.w900),
                ),
              ),
              const SizedBox(
                height: AppSize.mainSize30,
              ),
              const TextField(
                style: TextStyle(color: AppColor.colorWhite_three),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.colorWhite_three,
                    border: InputBorder.none,
                    hintText: AppString.textEnterEmailOrMobile,
                    hintStyle: TextStyle(color: AppColor.colorCoolGrey)),
              ),
              const SizedBox(
                height: AppSize.mainSize16,
              ),
              const TextField(
                style: TextStyle(color: AppColor.colorWhite_three),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColor.colorWhite_three,
                    border: InputBorder.none,
                    hintText: AppString.textEnterPassword,
                    hintStyle: TextStyle(color: AppColor.colorCoolGrey)),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: AppSize.mainSize220,
                  top: AppSize.mainSize15,
                  right: AppSize.mainSize1,
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScreenForgotpassword(),
                      ),
                    );
                  },
                  child: const Text(
                    AppString.textForgotPassword,
                    style: TextStyle(color: AppColor.colorCoolGrey),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
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
                    AppString.textLogin,
                    style: TextStyle(
                      // color: AppColor.colorWhite_two,
                      fontFamily: AppFonts.avenirRegular,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.mainSize15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenRegisteration(),
                    ),
                  );
                },
                child: const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: AppString.textDontHaveAnAccount,
                        style: TextStyle(
                          color: AppColor.colorCoolGrey,
                          fontFamily: AppFonts.avenirRegular,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: TextStyle(
                          color: AppColor.colorGreyish,
                          fontFamily: AppFonts.avenirRegular,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: AppString.textRegisterNow,
                        style: TextStyle(
                          color: AppColor.colorPrimary_two,
                          fontFamily: AppFonts.avenirRegular,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  style: TextStyle(
                    color: AppColor.colorCoolGrey,
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
  }
}
