import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Screens/PlaceOrder/screen_process_order_details.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenOrderBeingProcess extends StatefulWidget {
  const ScreenOrderBeingProcess({Key? key}) : super(key: key);

  @override
  State<ScreenOrderBeingProcess> createState() =>
      _ScreenOrderBeingProcessState();
}

class _ScreenOrderBeingProcessState extends State<ScreenOrderBeingProcess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImage.appOrderPlaced),
            ],
          ),
          const SizedBox(
            height: AppSize.mainSize23,
            child: Text(
              AppString.textOrderSuccessfullyPlaced,
              style: TextStyle(
                color: AppColor.colorBlack_two,
                fontSize: AppSize.mainSize20,
                fontFamily: AppFonts.avenirRegular,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: AppSize.mainSize188,
          ),
          SizedBox(
            height: AppSize.mainSize46,
            width: AppSize.mainSize320,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScreenProcessOrderDetail(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) => AppColor.colorPrimary,
                ),
              ),
              child: const Text(
                AppString.textViewMyOrder,
                style: TextStyle(
                    color: AppColor.colorWhite_two,
                    fontSize: AppSize.mainSize16,
                    fontFamily: AppFonts.avenirRegular,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
