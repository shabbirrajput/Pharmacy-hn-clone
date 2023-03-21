import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenOtpVerification extends StatefulWidget {
  const ScreenOtpVerification({Key? key}) : super(key: key);

  @override
  State<ScreenOtpVerification> createState() => _ScreenOtpVerificationState();
}

class _ScreenOtpVerificationState extends State<ScreenOtpVerification> {
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(AppSize.mainSize20,
            AppSize.mainSize10, AppSize.mainSize20, AppSize.mainSize20),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topCenter,
              child: Text(
                AppString.textVerification,
                style: TextStyle(
                    color: AppColor.colorBlack_two,
                    fontFamily: AppFonts.avenirRegular,
                    fontWeight: FontWeight.w900,
                    fontSize: AppSize.mainSize24),
              ),
            ),
            const SizedBox(
              height: AppSize.mainSize7,
            ),
            const Align(
              alignment: Alignment.topCenter,
              child: Text(
                AppString.textOtpVerificationSend,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: AppColor.colorCoolGrey,
                    fontFamily: AppFonts.avenirRegular,
                    fontSize: AppSize.mainSize16),
              ),
            ),
            const SizedBox(
              height: AppSize.mainSize18,
            ),
            const TextField(
              style: TextStyle(color: AppColor.colorWhite_three),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.colorWhite_three,
                  border: InputBorder.none,
                  hintText: AppString.textEnterEmailOrMobile,
                  hintStyle: TextStyle(
                      color: AppColor.colorCoolGrey,
                      fontWeight: FontWeight.w500)),
            ),
            const SizedBox(
              height: AppSize.mainSize107,
            ),
            SizedBox(
              height: AppSize.mainSize46,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) => AppColor.colorPrimary,
                  ),
                ),
                child: const Text(
                  AppString.textSubmit,
                  style: TextStyle(
                      color: AppColor.colorWhite_two,
                      fontFamily: AppFonts.avenirRegular,
                      fontSize: AppSize.mainSize16),
                ),
              ),
            ),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
