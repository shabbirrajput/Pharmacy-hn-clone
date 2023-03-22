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
              height: AppSize.mainSize31,
            ),
            Column(
              children: [
                SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _textFieldOTP(first: true, last: false),
                      _textFieldOTP(first: false, last: false),
                      _textFieldOTP(first: false, last: false),
                      _textFieldOTP(first: false, last: true),
                    ],
                  ),
                ),
                const SizedBox(
                  height: AppSize.mainSize31,
                ),
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: AppString.textDidntGetTheOTP,
                        style: TextStyle(
                          color: AppColor.colorCoolGrey,
                          fontFamily: AppFonts.avenirRegular,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: AppString.textResendOTP,
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
                const SizedBox(
                  height: AppSize.mainSize35,
                ),
                SizedBox(
                  height: AppSize.mainSize46,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
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
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _textFieldOTP({required bool first, last}) {
    return Flexible(
      child: SizedBox(
        height: 85,
        child: AspectRatio(
          aspectRatio: 1.0,
          child: TextField(
            autofocus: true,
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.isEmpty && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            showCursor: false,
            readOnly: false,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              counter: const Offstage(),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.black12),
                  borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.purple),
                  borderRadius: BorderRadius.circular(12)),
            ),
          ),
        ),
      ),
    );
  }
}
