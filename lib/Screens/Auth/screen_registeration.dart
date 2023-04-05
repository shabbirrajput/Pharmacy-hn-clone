import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Db/user_repo.dart';
import 'package:pharmacy_hn_clone/Screens/Auth/screen_login.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';
import 'package:sqflite/sqflite.dart';
import 'package:pharmacy_hn_clone/Db/database_handler.dart';

class ScreenRegisteration extends StatefulWidget {
  const ScreenRegisteration({Key? key}) : super(key: key);

  @override
  State<ScreenRegisteration> createState() => _ScreenRegisterationState();
}

class _ScreenRegisterationState extends State<ScreenRegisteration> {
  TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobilenoController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmpasslController = TextEditingController();
  Database? _database;

  Future<Database?> openDB() async {
    _database = await DatabaseHandler().openDB();
    return _database!;
  }

  Future<void> insertDB() async {
    await openDB();
    UserRepo userRepo = UserRepo();
    userRepo.createTable(_database);

    // UserModel userModel = UserModel(
    //     nameController.text.toString(),
    //     emailController.text.toString(),
    //     mobilenoController.text.toString(),
    //     passController.text.toString());

/*    await _database?.insert('CUSTOMERSDATA', userModel.toJson());
    await _database?.close();
    _database = await openDB();*/

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
  }

/*  Future<void> getFromUser() async {
    _database = await openDB();

    UserRepo userRepo = UserRepo();
    await userRepo.getUsers(_database);
    await _database?.close();
  }*/

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
              TextField(
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
              TextField(
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
              TextField(
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
              TextField(
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
              TextField(
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
                    insertDB();
                    // getFromUser();
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => const ScreenOtpVerification(),
                    //   ),
                    // );
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
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenLogin(),
                    ),
                  );
                },
                child: const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: AppString.textAlreadyHaveanAccount,
                        style: TextStyle(
                          color: AppColor.colorGreyish,
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
                        text: AppString.textSignIn,
                        style: TextStyle(
                          color: AppColor.colorPrimary_two,
                          fontFamily: AppFonts.avenirRegular,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  style: TextStyle(
                    color: AppColor.colorGreyish,
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
