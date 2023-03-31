import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenProcessOrderDetail extends StatefulWidget {
  const ScreenProcessOrderDetail({Key? key}) : super(key: key);

  @override
  State<ScreenProcessOrderDetail> createState() =>
      _ScreenProcessOrderDetailState();
}

class _ScreenProcessOrderDetailState extends State<ScreenProcessOrderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColor.colorWhite),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: AppColor.colorPrimary_two,
        title: Row(
          children: const [
            Text(
              AppString.textPlaceOrder,
              style: TextStyle(
                color: AppColor.colorWhite,
                fontFamily: AppFonts.avenirRegular,
                fontSize: AppSize.mainSize18,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
        elevation: 0,
      ),
    );
  }
}
