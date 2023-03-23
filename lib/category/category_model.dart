import 'package:pharmacy_hn_clone/core/app_string.dart';

class CategoryModel {
  String? image;
  String? name;

  CategoryModel(String textViewAllCategory, {this.image, this.name});

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
    AppString.textViewAllCategory,
  ),
];
