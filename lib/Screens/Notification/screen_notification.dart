import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/category/category_model.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenNotification extends StatefulWidget {
  const ScreenNotification({Key? key}) : super(key: key);

  @override
  State<ScreenNotification> createState() => _ScreenNotificationState();
}

class _ScreenNotificationState extends State<ScreenNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            top: AppSize.mainSize29, left: AppSize.mainSize30),
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: nitems().length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 0,
                child: Column(
                  children: [
                    const SizedBox(
                      height: AppSize.mainSize33,
                    ),
                    Row(
                      children: [
                        Text(
                          nitems()[index].nname!,
                          style: TextStyle(
                              color: index == 0 || index == 1
                                  ? AppColor.colorBlack_two
                                  : AppColor.colorCoolGrey,
                              fontSize: AppSize.mainSize14,
                              fontFamily: AppFonts.avenirRegular,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          nitems()[index].ntime!,
                          style: const TextStyle(
                              color: AppColor.colorCoolGrey,
                              fontFamily: AppFonts.avenirRegular),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSize.mainSize33,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
