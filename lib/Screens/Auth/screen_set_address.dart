import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Screens/Menu/screen_menu.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class ScreenSetAddress extends StatefulWidget {
  const ScreenSetAddress({Key? key}) : super(key: key);

  @override
  State<ScreenSetAddress> createState() => _ScreenSetAddressState();
}

class _ScreenSetAddressState extends State<ScreenSetAddress> {
  late var _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          style: const TextStyle(color: AppColor.colorBlack_two),
          decoration: const InputDecoration(
              filled: true,
              // fillColor: AppColor.colorWhite_three,
              border: InputBorder.none,
              hintText: AppString.textSearchCity,
              hintStyle: TextStyle(
                  color: AppColor.colorCoolGrey, fontWeight: FontWeight.w500)),
        ),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: AppColor.colorWhite_two,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Image.asset('assets/images/setAddress.png'),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Image.asset('assets/images/location.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    AppString.text841MontgomerySt,
                    style: TextStyle(
                      color: AppColor.colorBlack_two,
                      fontFamily: AppFonts.avenirRegular,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.mainSize15,
              ),
              TextFormField(
                style: const TextStyle(color: AppColor.colorBlack_two),
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: AppColor.colorWhite_three,
                    border: InputBorder.none,
                    hintText: AppString.textAddAddressInformation,
                    hintStyle: TextStyle(
                        color: AppColor.colorCoolGrey,
                        fontWeight: FontWeight.w500)),
              ),
              const SizedBox(
                height: AppSize.mainSize8,
              ),
              TextFormField(
                style: const TextStyle(color: AppColor.colorBlack_two),
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: AppColor.colorWhite_three,
                    border: InputBorder.none,
                    hintText: AppString.textZipCodeOptional,
                    hintStyle: TextStyle(
                        color: AppColor.colorCoolGrey,
                        fontWeight: FontWeight.w500)),
              ),
              const SizedBox(
                height: AppSize.mainSize15,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  AppString.textThisAddressWillAppearAs,
                ),
              ),
              const SizedBox(
                height: AppSize.mainSize16,
              ),
              const SizedBox(
                height: AppSize.mainSize25,
              ),
              BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: AppColor.colorPrimary_two,
                unselectedItemColor: AppColor.colorBlack_two.withOpacity(.60),
                selectedFontSize: 14,
                unselectedFontSize: 14,
                currentIndex: _currentIndex,
                onTap: _onItemTapped,
                elevation: 0,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    label: AppString.textHome,
                    icon: Icon(Icons.home_outlined),
                  ),
                  BottomNavigationBarItem(
                    label: AppString.textOffice,
                    icon: Icon(Icons.apartment),
                  ),
                  BottomNavigationBarItem(
                    label: AppString.textFamily,
                    icon: Icon(Icons.family_restroom_outlined),
                  ),
                  BottomNavigationBarItem(
                    label: AppString.textOther,
                    icon: Icon(Icons.pin_drop_outlined),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.mainSize25,
              ),
              SizedBox(
                height: AppSize.mainSize46,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ScreenMenu(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) => AppColor.colorPrimary,
                    ),
                  ),
                  child: const Text(
                    AppString.textSaveAndContinue,
                    style: TextStyle(
                        color: AppColor.colorWhite_two,
                        fontFamily: AppFonts.avenirRegular,
                        fontSize: AppSize.mainSize16),
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
// BottomNavigationBar(
//   type: BottomNavigationBarType.fixed,
//   selectedItemColor: AppColor.colorPrimary_two,
//   unselectedItemColor: AppColor.colorBlack_two.withOpacity(0),
//   selectedFontSize: 14,
//   unselectedFontSize: 14,
//   currentIndex: _currentIndex,
//   onTap: _onItemTapped,
//   elevation: 0,
//   items: <BottomNavigationBarItem>[
//     BottomNavigationBarItem(
//       label: AppString.textHome,
//       icon: Text(AppString.textTip1),
//     ),
//     BottomNavigationBarItem(
//       label: AppString.textOffice,
//       icon: Text(AppString.textTip2),
//     ),
//     BottomNavigationBarItem(
//       label: AppString.textFamily,
//       icon: Text(AppString.textTip3),
//     ),
//     BottomNavigationBarItem(
//       label: AppString.textOther,
//       icon: Text(AppString.textTip4),
//     ),
//     BottomNavigationBarItem(
//       label: AppString.textOther,
//       icon: Text(AppString.textAddCustom),
//     ),
//   ],
// ),
