import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Admin_Vendor/dashboard.dart';
import 'package:pharmacy_hn_clone/Db/comHelper.dart';
import 'package:pharmacy_hn_clone/Db/db_helper.dart';
import 'package:pharmacy_hn_clone/Db/navigator_key.dart';
import 'package:pharmacy_hn_clone/Db/user_model.dart';
import 'package:pharmacy_hn_clone/Screens/Auth/screen_forgot_password.dart';
import 'package:pharmacy_hn_clone/Screens/Auth/screen_registeration.dart';
import 'package:pharmacy_hn_clone/Screens/Menu/screen_menu.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_config.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  Future<SharedPreferences> _pref = SharedPreferences.getInstance();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  var dbHelper;

  @override
  void initState() {
    super.initState();
    dbHelper = DbHelper();
  }

  login() async {
    String email = emailController.text;
    String passwd = passController.text;

    if (email.isEmpty) {
      alertDialog("Please Enter Email ID");
    } else if (passwd.isEmpty) {
      alertDialog("Please Enter Password");
    } else {
      print('else------->');
      await dbHelper.getLoginUser(email, passwd).then((userData) {
        if (userData != null && userData.email != null) {
          print('else-------> then----->');
          setSP(userData).whenComplete(() {
            if (userData.usertype == 1) {
              Navigator.pushAndRemoveUntil(
                  NavigatorKey.navigatorKey.currentContext!,
                  MaterialPageRoute(builder: (_) => const Screendashboard()),
                  (Route<dynamic> route) => false);
            } else {
              Navigator.pushAndRemoveUntil(
                  NavigatorKey.navigatorKey.currentContext!,
                  MaterialPageRoute(builder: (_) => const ScreenMenu()),
                  (Route<dynamic> route) => false);
            }
          });
        } else {
          alertDialog("Error: User Not Found");
        }
      }).catchError((error) {
        print(error);
        alertDialog("Error: Login Fail");
      });
    }
  }

  Future setSP(UserModel user) async {
    final SharedPreferences sp = await _pref;

    print('object--->${jsonEncode(user)}');

    sp.setInt(AppConfig.textUserId, user.id!);
    sp.setString("name", user.name!);
    sp.setString("email", user.email!);
    sp.setString("mobileno", user.mobileno!);
    sp.setString("password", user.password!);
    sp.setInt(AppConfig.textUserType, user.usertype!);
  }

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
              TextFormField(
                controller: emailController,
                style: const TextStyle(color: AppColor.colorBlack_two),
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: AppColor.colorWhite_three,
                    border: InputBorder.none,
                    hintText: AppString.textEnterEmailOrMobile,
                    hintStyle: TextStyle(color: AppColor.colorCoolGrey)),
              ),
              const SizedBox(
                height: AppSize.mainSize16,
              ),
              TextFormField(
                obscureText: true,
                controller: passController,
                style: const TextStyle(color: AppColor.colorBlack_two),
                decoration: const InputDecoration(
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
                    // login();
                    // insertDB();
                    login();
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
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: AppString.textDontHaveAnAccount,
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
                              builder: (context) => const ScreenRegisteration(),
                            ),
                          );
                        },
                      text: AppString.textRegisterNow,
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
      ),
    );
  }
}
