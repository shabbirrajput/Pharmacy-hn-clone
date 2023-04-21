import 'package:flutter/material.dart';
import 'package:pharmacy_hn_clone/Db/comHelper.dart';
import 'package:pharmacy_hn_clone/Screens/Cart/model/model_cart_product.dart';
import 'package:pharmacy_hn_clone/Screens/Menu/alert_dialogue.dart';
import 'package:pharmacy_hn_clone/core/app_color.dart';
import 'package:pharmacy_hn_clone/core/app_fonts.dart';
import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_size.dart';

class RowCart extends StatelessWidget {
  final ModelCartProduct item;
  final Function onDecrease;
  final Function onIncrease;
  final Function onDelete;
  const RowCart(
      {Key? key,
      required this.item,
      required this.onDecrease,
      required this.onIncrease,
      required this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSize.mainSize30),
      child: Column(
        children: [
          Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: AppSize.mainSize100,
                  width: AppSize.mainSize100,
                  child: Image.network(item.productImage!),
                ),
                const SizedBox(
                  width: AppSize.mainSize16,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.productName!.toString(),
                      style: const TextStyle(
                          fontSize: AppSize.mainSize14,
                          color: AppColor.colorBlack_two,
                          fontFamily: AppFonts.avenirRegular,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "\$${item.productPrice!.toString()}",
                      style: const TextStyle(
                        color: AppColor.colorPrimary_two,
                        fontFamily: AppFonts.avenirRegular,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: AppSize.mainSize40,
                          width: AppSize.mainSize110,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColor.colorCoolGrey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              if (item.cartProductQty != 1)
                                InkWell(
                                    onTap: () {
                                      onDecrease();
                                    },
                                    child: Image.asset(
                                      AppImage.appRemove,
                                      height: AppSize.mainSize10,
                                      width: AppSize.mainSize10,
                                    )),
                              if (item.cartProductQty != 1)
                                const VerticalDivider(
                                  color: AppColor.colorCoolGrey,
                                  thickness: 1,
                                ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 3),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 2),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Colors.white),
                                child: Text(
                                  item.cartProductQty.toString(),
                                  style: getTextStyle(
                                      AppFonts.regular, AppSize.textSize20),
                                ),
                              ),
                              if (item.cartProductQty != item.productQty!)
                                const VerticalDivider(
                                  color: AppColor.colorCoolGrey,
                                  thickness: 1,
                                ),
                              if (item.cartProductQty != item.productQty!)
                                InkWell(
                                    onTap: () {
                                      onIncrease();
                                    },
                                    child: Image.asset(
                                      AppImage.appAdd,
                                      height: 20,
                                      width: 20,
                                    )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: AppSize.mainSize73,
                        ),
                        Container(
                          height: AppSize.mainSize37,
                          width: AppSize.mainSize37,
                          decoration: BoxDecoration(
                            color: AppColor.colorCoral,
                            borderRadius:
                                BorderRadius.circular(AppSize.mainSize19),
                          ),
                          child: IconButton(
                              onPressed: () {
                                showAlertDialog(context);
                              },
                              icon: Image.asset(AppImage.appDelete)),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSize.mainSize43,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
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
      child: const Text("Delete"),
      onPressed: () {
        Navigator.pop(context);
        onDelete();
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Delete Cart"),
      content: const Text("Are you sure You want to Delete?"),
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
