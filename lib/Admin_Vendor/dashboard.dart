// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Admin_Vendor/tab/view/tab_add_products.dart';
import 'package:pharmacy_hn_clone/Admin_Vendor/tab/view/tab_current_order.dart';
import 'package:pharmacy_hn_clone/Admin_Vendor/tab/view/tab_order_history.dart';
import 'package:pharmacy_hn_clone/Screens/Splash/screen_splash.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenDashboard extends StatefulWidget {
  const ScreenDashboard({Key? key}) : super(key: key);

  @override
  State<ScreenDashboard> createState() => _ScreenDashboardState();
}

class _ScreenDashboardState extends State<ScreenDashboard> {
  late var _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void onLogout() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const ScreenSplash()),
        (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.colorPrimary_two,
        title: Row(
          children: const [
            Text(AppString.textVendor),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              showAlertDialog(context);
            },
          ),
        ],
        elevation: 0,
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: AppColor.colorPrimary_two,
            textTheme: Theme.of(context).textTheme.copyWith(
                bodySmall: const TextStyle(color: AppColor.colorWhite_three))),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: AppColor.colorWhite,
          unselectedItemColor: AppColor.colorWhite_two.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: AppString.textAddProducts,
              icon: Icon(Icons.add),
            ),
            BottomNavigationBarItem(
              label: AppString.textMyCurrentOrder,
              icon: Icon(Icons.view_array_outlined),
            ),
            BottomNavigationBarItem(
              label: AppString.textOrderHistory,
              icon: Icon(Icons.history),
            ),
          ],
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: const [
          TabAddProducts(),
          TabCurrentOrder(),
          TabOrderHistory(),
        ],
      ), // Th,
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = ElevatedButton(
      child: const Text("Cancel"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = ElevatedButton(
      child: const Text("log Out"),
      onPressed: () {
        onLogout();
        Navigator.pop(context);
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Log Out"),
      content: const Text("Are you sure you want to Log Out?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
