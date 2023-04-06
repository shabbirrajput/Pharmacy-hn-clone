import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Screens/PlaceOrder/screen_order_being_process.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class BottomSheetSelectPaymentOption extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onChange;
  const BottomSheetSelectPaymentOption(
      {Key? key, required this.selectedIndex, required this.onChange})
      : super(key: key);

  @override
  State<BottomSheetSelectPaymentOption> createState() =>
      _BottomSheetSelectPaymentOptionState();
}

class _BottomSheetSelectPaymentOptionState
    extends State<BottomSheetSelectPaymentOption> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: AppSize.mainSize600,
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: AppSize.mainSize29,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: AppSize.mainSize60, right: AppSize.mainSize16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: AppSize.mainSize20,
                    ),
                    const Expanded(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          AppString.textSelectPaymentOption,
                          style: TextStyle(
                              fontSize: AppSize.mainSize20,
                              color: AppColor.colorBlack_two,
                              fontFamily: AppFonts.avenirRegular,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(AppImage.appCross),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppSize.mainSize61,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.mainSize32),
                child: Card(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(
                            value: 1,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                value = _value;
                                widget.onChange(value!);
                              });
                            },
                          ),
                          const Text(AppString.textPayusingVisaMasterCard),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(
                            value: 2,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                value = _value;
                              });
                            },
                          ),
                          const Text(AppString.textCashOnDelivery),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Radio(
                            value: 3,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                value = _value;
                              });
                            },
                          ),
                          const Text(AppString.textACHPayment),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            AppString.textBankAccountsForTransfer,
                            style: TextStyle(
                              color: AppColor.colorBlack_two,
                              fontSize: AppSize.mainSize16,
                              fontFamily: AppFonts.avenirRegular,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppSize.mainSize17,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            AppString.textBancoFicohsaCheckingAccountLempiras,
                            style: TextStyle(
                              color: AppColor.colorBlack_two,
                              fontSize: AppSize.mainSize14,
                              fontFamily: AppFonts.avenirRegular,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            AppString.textBankTransferID,
                            style: TextStyle(
                              color: AppColor.colorBlack_two,
                              fontSize: AppSize.mainSize14,
                              fontFamily: AppFonts.avenirRegular,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppSize.mainSize30,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            AppString.textBancoFicohsaCheckingAccountLempiras,
                            style: TextStyle(
                              color: AppColor.colorBlack_two,
                              fontSize: AppSize.mainSize14,
                              fontFamily: AppFonts.avenirRegular,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            AppString.textBankTransferID,
                            style: TextStyle(
                              color: AppColor.colorBlack_two,
                              fontSize: AppSize.mainSize14,
                              fontFamily: AppFonts.avenirRegular,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppSize.mainSize5,
                      ),
                      Image.asset(AppImage.appFicohsa),
                      const SizedBox(
                        height: AppSize.mainSize22,
                      ),
                      SizedBox(
                        height: AppSize.mainSize46,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ScreenOrderBeingProcess(),
                              ),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.resolveWith<Color?>(
                              (Set<MaterialState> states) =>
                                  AppColor.colorPrimary,
                            ),
                          ),
                          child: const Text(
                            AppString.textContinue,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: AppSize.mainSize16,
                              fontFamily: AppFonts.avenirHeavy,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: AppSize.mainSize33,
              ),
            ],
          ),
        ),
      ),
    );
  }
}