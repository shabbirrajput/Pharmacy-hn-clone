import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class CategoryModel {
  String? image;
  String? name;

  CategoryModel(String textViewAllCategory, String textWineLiqour,
      {this.image, this.name});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    return data;
  }
}

List<CategoryModel> items = [
  CategoryModel(
    AppImage.appWine,
    AppString.textWineLiqour,
  ),
  CategoryModel(
    AppImage.appVitamins,
    AppString.textVitamins,
  ),
  CategoryModel(
    AppImage.appHealth,
    AppString.textHealth,
  ),
  CategoryModel(
    AppImage.appSkinCare,
    AppString.textSkinCare,
  ),
];

class Items {
  String? image;
  String? name;
  double? price;

  Items(String textViewAllCategory, String textWineLiqour, double d,
      {this.image, this.name, this.price});

  Items.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['price'] = price;
    return data;
  }
}

List<Items> items_ = [
  Items(
      'http://doritos.com.au/images/default-source/products/mexicanabag.png?sfvrsn=412cf8f2_4',
      'Doritos Tangy Cheese Corn Chips',
      2.25),
  Items(
      'http://doritos.com.au/images/default-source/products/mexicanabag.png?sfvrsn=412cf8f2_4',
      'Doritos Tangy Cheese Corn Chips',
      2.25),
  Items(
      'http://doritos.com.au/images/default-source/products/mexicanabag.png?sfvrsn=412cf8f2_4',
      'Doritos Tangy Cheese Corn Chips',
      2.25),
  Items(
      'http://doritos.com.au/images/default-source/products/mexicanabag.png?sfvrsn=412cf8f2_4',
      'Doritos Tangy Cheese Corn Chips',
      2.25),
  Items(
      'http://doritos.com.au/images/default-source/products/mexicanabag.png?sfvrsn=412cf8f2_4',
      'Doritos Tangy Cheese Corn Chips',
      2.25),
  Items(
      'http://doritos.com.au/images/default-source/products/mexicanabag.png?sfvrsn=412cf8f2_4',
      'Doritos Tangy Cheese Corn Chips',
      2.25),
  Items(
      'http://doritos.com.au/images/default-source/products/mexicanabag.png?sfvrsn=412cf8f2_4',
      'Doritos Tangy Cheese Corn Chips',
      2.25),
  Items(
      'http://doritos.com.au/images/default-source/products/mexicanabag.png?sfvrsn=412cf8f2_4',
      'Doritos Tangy Cheese Corn Chips',
      2.25),
  Items(
      'http://doritos.com.au/images/default-source/products/mexicanabag.png?sfvrsn=412cf8f2_4',
      'Doritos Tangy Cheese Corn Chips',
      2.25),
  Items(
      'http://doritos.com.au/images/default-source/products/mexicanabag.png?sfvrsn=412cf8f2_4',
      'Doritos Tangy Cheese Corn Chips',
      2.25),
];
