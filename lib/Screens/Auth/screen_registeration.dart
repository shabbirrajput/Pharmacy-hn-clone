// ignore_for_file: prefer_typing_uninitialized_variables, unrelated_type_equality_checks

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Db/comHelper.dart';
import 'package:pharmacy_hn_clone/Db/db_helper.dart';
import 'package:pharmacy_hn_clone/Db/user_model.dart';
import 'package:pharmacy_hn_clone/Screens/Auth/screen_login.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenRegisteration extends StatefulWidget {
  const ScreenRegisteration({Key? key}) : super(key: key);

  @override
  State<ScreenRegisteration> createState() => _ScreenRegisterationState();
}

class _ScreenRegisterationState extends State<ScreenRegisteration> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobilenoController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmpasslController = TextEditingController();
  var dbHelper;

  @override
  void initState() {
    super.initState();
    dbHelper = DbHelper();
  }

  signUp() async {
    String name = nameController.text;
    String email = emailController.text;
    String mobileno = mobilenoController.text;
    String passwd = passController.text;
    String cpasswd = confirmpasslController.text;
    String username = "";

    ///if (_formKey.currentState!.validate()) {

    bool isExist = false;
    if (email.isNotEmpty) {
      await dbHelper.getCheckEmailUser(email).then((userData) {
        if (userData != null && userData.email != null) {
          isExist = true;
        }
      });
    }

    if (username == 0) {
      username = 'Vendor';
    } else {
      username = 'Customer';
    }

    if (name.isEmpty) {
      alertDialog("Please Enter Name");
    } else if (email.isEmpty) {
      alertDialog("Please Enter Email");
    } else if (!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)) {
      alertDialog("Invalid Email");
    } else if (isExist) {
      alertDialog("This Email ID Is Already Exist. Please Enter New Email");
    } else if (mobileno.isEmpty) {
      alertDialog("Please Enter Mobile No");
    } else if (!RegExp(r'^[0-9]{10}$').hasMatch(mobileno)) {
      alertDialog("Invalid Mobile No");
    } else if (passwd.isEmpty) {
      alertDialog("Please Enter Password");
    } else if (!RegExp(r'(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)')
        .hasMatch(passwd)) {
      alertDialog(
          "Please Enter Strong Password\n\nHint : Password must contain Upper/Lower case, number and special character");
    } else if (cpasswd.isEmpty) {
      alertDialog("Please Enter Confirm Password");
    } else if (passwd != cpasswd) {
      alertDialog('Password Mismatch');
    } else {
      UserModel uModel = UserModel();

      uModel.name = name;
      uModel.email = email;
      uModel.mobileno = mobileno;
      uModel.password = passwd;
      uModel.usertype = _value;
      uModel.username = username;
      dbHelper = DbHelper();
      await dbHelper.saveData(uModel).then((userData) {
        alertDialog("Successfully Saved");
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => const ScreenLogin()));
      }).catchError((error) {
        alertDialog("Error: Data Save Fail--$error");
      });
    }
  }

  int _value = 0;

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
              AppSize.mainSize10, AppSize.mainSize20, AppSize.mainSize20),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  AppString.textRegisteration,
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
              const SizedBox(
                height: AppSize.mainSize30,
              ),
              TextFormField(
                controller: nameController,
                style: const TextStyle(color: AppColor.colorBlack_two),
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: AppColor.colorWhite_three,
                    border: InputBorder.none,
                    hintText: AppString.textFullName,
                    hintStyle: TextStyle(
                        color: AppColor.colorCoolGrey,
                        fontWeight: FontWeight.w500)),
              ),
              const SizedBox(
                height: AppSize.mainSize16,
              ),
              TextFormField(
                controller: emailController,
                style: const TextStyle(color: AppColor.colorBlack_two),
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: AppColor.colorWhite_three,
                    border: InputBorder.none,
                    hintText: AppString.textEmailAddress,
                    hintStyle: TextStyle(
                        color: AppColor.colorCoolGrey,
                        fontWeight: FontWeight.w500)),
              ),
              const SizedBox(
                height: AppSize.mainSize16,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                controller: mobilenoController,
                style: const TextStyle(color: AppColor.colorBlack_two),
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: AppColor.colorWhite_three,
                    border: InputBorder.none,
                    hintText: AppString.textMobileNumber,
                    hintStyle: TextStyle(
                        color: AppColor.colorCoolGrey,
                        fontWeight: FontWeight.w500)),
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
                    hintText: AppString.textPassword,
                    hintStyle: TextStyle(
                        color: AppColor.colorCoolGrey,
                        fontWeight: FontWeight.w500)),
              ),
              const SizedBox(
                height: AppSize.mainSize16,
              ),
              TextFormField(
                obscureText: true,
                controller: confirmpasslController,
                style: const TextStyle(color: AppColor.colorBlack_two),
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: AppColor.colorWhite_three,
                    border: InputBorder.none,
                    hintText: AppString.textConfirmPassword,
                    hintStyle: TextStyle(
                        color: AppColor.colorCoolGrey,
                        fontWeight: FontWeight.w500)),
              ),
              const SizedBox(
                height: AppSize.mainSize15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio(
                      activeColor: AppColor.colorPrimary,
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                  const Text("Vendor"),
                  Radio(
                      activeColor: AppColor.colorPrimary,
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value!;
                        });
                      }),
                  const Text("Customer"),
                ],
              ),
              const SizedBox(
                height: AppSize.mainSize15,
              ),
              const Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: AppString.textTermsAndCondition,
                      style: TextStyle(
                        color: AppColor.colorGreyish,
                        fontFamily: AppFonts.avenirRegular,
                        fontSize: AppSize.mainSize14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: AppString.textTermsAndCondition1,
                      style: TextStyle(
                        color: AppColor.colorPrimary_two,
                        fontFamily: AppFonts.avenirRegular,
                        fontSize: AppSize.mainSize14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: AppString.textAnd,
                      style: TextStyle(
                        color: AppColor.colorGreyish,
                        fontFamily: AppFonts.avenirRegular,
                        fontSize: AppSize.mainSize14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: AppString.textPrivacyPolicy,
                      style: TextStyle(
                        color: AppColor.colorPrimary_two,
                        fontFamily: AppFonts.avenirRegular,
                        fontSize: AppSize.mainSize14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                style: TextStyle(
                  color: AppColor.colorGreyish,
                  fontFamily: AppFonts.avenirRegular,
                  fontSize: AppSize.mainSize14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: AppSize.mainSize23,
              ),
              SizedBox(
                height: AppSize.mainSize46,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    signUp();
                    // getFromUser();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) => AppColor.colorPrimary,
                    ),
                  ),
                  child: const Text(
                    AppString.textContinue,
                    style: TextStyle(
                        color: AppColor.colorWhite_two,
                        fontFamily: AppFonts.avenirRegular,
                        fontSize: AppSize.mainSize16),
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.mainSize19,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: AppString.textAlreadyHaveanAccount,
                      style: TextStyle(
                        color: AppColor.colorGreyish,
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
                  color: AppColor.colorGreyish,
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
