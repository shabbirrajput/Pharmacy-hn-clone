import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenSetAddress extends StatefulWidget {
  const ScreenSetAddress({Key? key}) : super(key: key);

  @override
  State<ScreenSetAddress> createState() => _ScreenSetAddressState();
}

class _ScreenSetAddressState extends State<ScreenSetAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          AppString.textSearchCity,
          style: TextStyle(
            color: AppColor.colorCoolGrey,
            fontSize: 16,
            fontFamily: AppFonts.avenirRegular,
            fontWeight: FontWeight.w500,
          ),
        ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: AppColor.colorWhite_two,
      ),
    );
  }
}
