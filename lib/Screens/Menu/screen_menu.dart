import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';

class ScreenMenu extends StatefulWidget {
  const ScreenMenu({Key? key}) : super(key: key);

  @override
  State<ScreenMenu> createState() => _ScreenMenuState();
}

class _ScreenMenuState extends State<ScreenMenu> {
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
    );
  }
}
