import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pharmacy_hn_clone/Screens/Auth/screen_login.dart';
import 'package:pharmacy_hn_clone/Screens/Auth/screen_registeration.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenOnboarding extends StatefulWidget {
  const ScreenOnboarding({Key? key}) : super(key: key);

  @override
  State<ScreenOnboarding> createState() => _ScreenOnboardingState();
}

class _ScreenOnboardingState extends State<ScreenOnboarding> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  void _login() async {
    try {
      await _googleSignIn.signIn();
      // User signed in successfully
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(AppSize.mainSize68,
                  AppSize.mainSize56, AppSize.mainSize68, AppSize.mainSize13),
              child: Image.asset(AppImage.appOnboardingPng2),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(AppSize.mainSize20,
                  AppSize.mainSize13, AppSize.mainSize20, AppSize.mainSize16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: AppSize.mainSize46,
                    width: AppSize.mainSize320,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScreenRegisteration(),
                          ),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) => AppColor.colorPrimary,
                        ),
                      ),
                      child: const Text(
                        AppString.textSignUp,
                        style: TextStyle(
                          color: AppColor.colorWhite_two,
                          fontFamily: AppFonts.avenirRegular,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppSize.mainSize46,
              width: AppSize.mainSize320,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  disabledForegroundColor: AppColor.colorPrimary,
                  side: const BorderSide(color: AppColor.colorPrimary),
                ),
                child: const Text(
                  AppString.textContinueAsGuest,
                  style: TextStyle(
                    color: AppColor.colorPrimary,
                    fontFamily: AppFonts.avenirRegular,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: AppSize.mainSize19,
            ),
            const Text(
              AppString.textOr,
              style: TextStyle(
                color: AppColor.colorDarkGrey,
                fontSize: AppSize.mainSize16,
                fontFamily: AppFonts.avenirRegular,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: AppSize.mainSize18,
            ),
            SizedBox(
              height: AppSize.mainSize46,
              width: AppSize.mainSize320,
              child: OutlinedButton.icon(
                icon: Image.asset(AppImage.appFblogo),
                label: const Text(
                  AppString.textContinueWithFb,
                  style: TextStyle(
                      color: AppColor.colorWhite,
                      fontFamily: AppFonts.avenirRegular),
                ),
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  disabledForegroundColor: AppColor.colorPrimary,
                  backgroundColor: AppColor.colorWaterBlue,
                  side: const BorderSide(color: AppColor.colorPrimary),
                ),
              ),
            ),
            const SizedBox(
              height: AppSize.mainSize20,
            ),
            SizedBox(
              height: AppSize.mainSize46,
              width: AppSize.mainSize320,
              child: OutlinedButton.icon(
                icon: Image.asset(AppImage.appSearch),
                label: const Text(
                  AppString.textContinueWithGoogle,
                  style: TextStyle(
                    color: AppColor.colorBlack,
                    fontSize: AppSize.mainSize16,
                    fontFamily: AppFonts.avenirRegular,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  _login();
                },
                style: OutlinedButton.styleFrom(
                  disabledForegroundColor: AppColor.colorPrimary,
                  backgroundColor: AppColor.colorWhite_two,
                  side: const BorderSide(color: AppColor.colorWhite, width: 2),
                ),
              ),
            ),
            const SizedBox(
              height: AppSize.mainSize44,
            ),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: AppString.textAlreadyHaveanAccount,
                    style: TextStyle(
                      color: AppColor.colorCoolGrey,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(
                    text: ' ',
                    style: TextStyle(
                      color: AppColor.colorGreyish,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScreenLogin(),
                          ),
                        );
                      },
                    text: AppString.textSignIn,
                    style: const TextStyle(
                      color: AppColor.colorPrimary_two,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              style: const TextStyle(
                color: AppColor.colorCoolGrey,
                fontFamily: AppFonts.avenirRegular,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
