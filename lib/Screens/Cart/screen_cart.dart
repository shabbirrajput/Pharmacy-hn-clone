import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Db/comHelper.dart';
import 'package:pharmacy_hn_clone/Db/db_helper.dart';
import 'package:pharmacy_hn_clone/Screens/Cart/model/model_cart_product.dart';
import 'package:pharmacy_hn_clone/Screens/Cart/row/row_cart.dart';
import 'package:pharmacy_hn_clone/Screens/PlaceOrder/screen_place_order.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_config.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenCart extends StatefulWidget {
  const ScreenCart({Key? key}) : super(key: key);

  @override
  State<ScreenCart> createState() => _ScreenCartState();
}

class _ScreenCartState extends State<ScreenCart> {
  var dbHelper;
  ModelCartProduct mCartModelData = ModelCartProduct();
  List<ModelCartProduct> mCartModel = [];

  @override
  void initState() {
    initData();
    super.initState();
  }

  void initData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    dbHelper = DbHelper();
    await dbHelper
        .getUserCart(sp.getInt(AppConfig.textUserId))
        .then((List<ModelCartProduct> cartData) {
      if (cartData.isNotEmpty) {
        setState(() {
          mCartModel = cartData;
        });
      } else {
        setState(() {
          mCartModel = [];
        });
      }
    });
  }

  int selectQty = 0;

  removeFromCart(int index) async {
    dbHelper = DbHelper();
    await dbHelper.deleteCart(mCartModel[index].cartId);
    initData();
  }

  addToCart(int index, bool isIncrease) async {
    int selectQty = mCartModel[index].cartProductQty!;
    dbHelper = DbHelper();
    await dbHelper
        .updateCart(isIncrease ? selectQty + 1 : selectQty - 1,
            mCartModel[index].cartId)
        .then((cartData) {
      alertDialog("Successfully Modified Cart");
      initData();
    }).catchError((error) {
      print(error);
      alertDialog("Error: Data Save Fail--$error");
    });
    initData();
  }

  getTotalPrice() {
    double total = 0.0;
  }

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
              AppString.textMyCart,
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
      body: Padding(
        padding: const EdgeInsets.only(
            top: AppSize.mainSize16,
            left: AppSize.mainSize16,
            right: AppSize.mainSize16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return RowCart(
                      item: mCartModel[index],
                      onDecrease: () => addToCart(index, false),
                      onIncrease: () => addToCart(index, true),
                      onDelete: () => removeFromCart(index),
                    );
                  },
                  itemCount: mCartModel.length),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  AppString.textSubtotal,
                  style: TextStyle(
                    color: AppColor.colorBlack_two,
                    fontFamily: AppFonts.avenirRegular,
                    fontSize: AppSize.mainSize14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  AppString.textSubtotalAmount,
                  style: TextStyle(
                    color: AppColor.colorPrimary_two,
                    fontFamily: AppFonts.avenirRegular,
                    fontSize: AppSize.mainSize14,
                    fontWeight: FontWeight.w900,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: AppSize.mainSize31,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: AppSize.mainSize46,
                  width: 177,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      disabledForegroundColor: AppColor.colorPrimary,
                      side: const BorderSide(color: AppColor.colorPrimary),
                    ),
                    child: const Text(
                      AppString.textShareMyCart,
                      style: TextStyle(
                        color: AppColor.colorPrimary,
                        fontFamily: AppFonts.avenirRegular,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: AppSize.mainSize46,
                  width: 177,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScreenPlaceOrder(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) => AppColor.colorPrimary,
                      ),
                    ),
                    child: const Text(
                      AppString.textOrderNow,
                      style: TextStyle(
                        color: AppColor.colorWhite_two,
                        fontFamily: AppFonts.avenirRegular,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSize.mainSize136,
            ),
          ],
        ),
      ),
    );
  }
}
