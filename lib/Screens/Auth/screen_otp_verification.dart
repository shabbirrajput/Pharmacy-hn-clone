import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharmacy_hn_clone/Screens/Auth/screen_set_address.dart';
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        color: AppColor.colorWhite_three,
                        height: 50,
                        width: 50,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin1) {},
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: '0',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        color: AppColor.colorWhite_three,
                        height: 50,
                        width: 50,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin1) {},
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: '0',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        color: AppColor.colorWhite_three,
                        height: 50,
                        width: 50,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin1) {},
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: '0',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        color: AppColor.colorWhite_three,
                        height: 50,
                        width: 50,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          onSaved: (pin1) {},
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: '0',
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: AppSize.mainSize31,
                ),
                InkWell(
                  onTap: () {},
                  child: const Text.rich(
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
                ),
                const SizedBox(
                  height: AppSize.mainSize35,
                ),
                SizedBox(
                  height: AppSize.mainSize46,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScreenSetAddress(),
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
                      AppString.textVerify,
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
}
/*Container(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 200,
                color: Colors.purple[600],
                child: const Center(child: Text('Item 1', style: TextStyle(fontSize: 18, color: Colors.white),)),
              ),
              Container(
                width: 200,
                color: Colors.purple[500],
                child: const Center(child: Text('Item 2', style: TextStyle(fontSize: 18, color: Colors.white),)),
              ),
              Container(
                width: 200,
                color: Colors.purple[400],
                child: const Center(child: Text('Item 3', style: TextStyle(fontSize: 18, color: Colors.white),)),
              ),
              Container(
                width: 200,
                color: Colors.purple[300],
                child: const Center(child: Text('Item 4', style: TextStyle(fontSize: 18, color: Colors.white),)),
              ),
            ],
          ),
        ),
      ),*/
