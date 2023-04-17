import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Admin_Vendor/dashboard.dart';
import 'package:pharmacy_hn_clone/Screens/Menu/screen_menu.dart';
import 'package:pharmacy_hn_clone/Screens/Onboarding/screen_onboarding.dart';
import 'package:pharmacy_hn_clone/core/app_config.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    init();
    super.initState();
  }

  void init() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    print('object--textUserId--${sp.getInt(AppConfig.textUserId)}');
    print('object--textUserType--${sp.getInt(AppConfig.textUserType)}');
    Future.delayed(const Duration(seconds: 2), () {
      if (sp.getInt(AppConfig.textUserId) != null &&
          sp.getInt(AppConfig.textUserType) == 1) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const ScreenDashboard()),
            (Route<dynamic> route) => false);
      } else if (sp.getInt(AppConfig.textUserId) != null &&
          sp.getInt(AppConfig.textUserType) == 2) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const ScreenMenu()),
            (Route<dynamic> route) => false);
      } else {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const ScreenOnboarding()),
            (Route<dynamic> route) => false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImage.appBgPng),
            fit: BoxFit.cover,
          ),
        ),
        child: Image.asset(
          AppImage.appLogoPng,
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }
}
