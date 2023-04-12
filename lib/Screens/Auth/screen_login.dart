import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Db/comHelper.dart';
import 'package:pharmacy_hn_clone/Db/db_helper.dart';
import 'package:pharmacy_hn_clone/Db/navigator_key.dart';
import 'package:pharmacy_hn_clone/Db/user_model.dart';
import 'package:pharmacy_hn_clone/Screens/Auth/screen_forgot_password.dart';
import 'package:pharmacy_hn_clone/Screens/Auth/screen_registeration.dart';
import 'package:pharmacy_hn_clone/Screens/Menu/screen_menu.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
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
            Navigator.pushAndRemoveUntil(
                NavigatorKey.navigatorKey.currentContext!,
                MaterialPageRoute(builder: (_) => const ScreenMenu()),
                (Route<dynamic> route) => false);
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

    sp.setInt("id", user.id!);
    sp.setString("name", user.name!);
    sp.setString("email", user.email!);
    sp.setString("mobileno", user.mobileno!);
    sp.setString("password", user.password!);
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
              TextField(
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
              TextField(
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

/* Future<void> login() async {
    await openDB();
    UserRepo userRepo = UserRepo();
    userRepo.createTable(_database);

    // UserModel userModel = UserModel(
    //     nameController.text.toString(),
    //     emailController.text.toString(),
    //     mobilenoController.text.toString(),
    //     passController.text.toString());

*/ /*    await _database?.insert('CUSTOMERSDATA', userModel.toJson());
    await _database?.close();
    _database = await openDB();*/ /*

    await _database!.execute(
        '''INSERT INTO CUSTOMERSDATA (name, email, mobile, password) VALUES ('${nameController.text}','${emailController.text}','${mobilenoController.text}','${passController.text}')''').then((value) {
      print('object--------------------');
    });

    await _database?.rawQuery('SELECT * FROM CUSTOMERSDATA').then((value) {
      value.forEach((element) {
        print("element['name'] =================> ${element['name']}");
        print("element['email'] =================> ${element['email']}");
        print("element['mobile'] =================> ${element['mobile']}");
        print("element['password'] =================> ${element['password']}");
      });
    });
  }*/
}
