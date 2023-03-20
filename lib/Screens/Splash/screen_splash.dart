import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
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
