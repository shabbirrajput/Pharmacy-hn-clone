import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';

class ScreenOnboarding extends StatefulWidget {
  const ScreenOnboarding({Key? key}) : super(key: key);

  @override
  State<ScreenOnboarding> createState() => _ScreenOnboardingState();
}

class _ScreenOnboardingState extends State<ScreenOnboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(AppSize.mainSize68,
                AppSize.mainSize56, AppSize.mainSize68, AppSize.mainSize13),
            child: Image.asset(AppImage.appOnboardingPng),
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
                  child: ElevatedButton.icon(
                    icon: Image.asset(AppImage.appFblogo),
                    label: const Text(
                      'Sign Up',
                    ),
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) => AppColor.colorPrimary,
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
                'Continue as a Guest',
                style: TextStyle(color: AppColor.colorPrimary),
              ),
            ),
          ),
          const SizedBox(
            height: AppSize.mainSize19,
          ),
          const Text(
            'or',
            style: TextStyle(
              color: Color(0xff252427),
              fontSize: AppSize.mainSize16,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: AppSize.mainSize18,
          ),
          SizedBox(
            height: AppSize.mainSize46,
            width: AppSize.mainSize320,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                disabledForegroundColor: AppColor.colorPrimary,
                backgroundColor: AppColor.colorWaterBlue,
                side: const BorderSide(color: AppColor.colorPrimary),
              ),
              child: const Text(
                'Continue with Facebook',
                style: TextStyle(color: AppColor.colorWhite),
              ),
            ),
          ),
          const SizedBox(
            height: AppSize.mainSize20,
          ),
          SizedBox(
            height: AppSize.mainSize46,
            width: AppSize.mainSize320,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                disabledForegroundColor: AppColor.colorPrimary,
                backgroundColor: AppColor.colorWhite_two,
                side: const BorderSide(color: AppColor.colorWhite, width: 2),
              ),
              child: const Text(
                'Continue with Google',
                style: TextStyle(color: AppColor.colorBlack),
              ),
            ),
          ),
          const SizedBox(
            height: AppSize.mainSize44,
          ),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Already have an account?',
                  style: TextStyle(
                    color: AppColor.colorCoolGrey,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: ' ',
                  style: TextStyle(
                    color: AppColor.colorGreyish,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextSpan(
                  text: 'Sign In',
                  style: TextStyle(
                    color: AppColor.colorPrimary_two,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            style: TextStyle(
              color: AppColor.colorCoolGrey,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
