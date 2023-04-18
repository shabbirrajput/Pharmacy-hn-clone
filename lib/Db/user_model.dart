class UserModel {
  int? id;
  String? name;
  String? email;
  String? mobileno;
  String? password;
  int? usertype;
  String? username;

  ///  int? UserType;

  UserModel(
      {this.id,
      this.name,
      this.email,
      this.mobileno,
      this.password,
      this.usertype,
      this.username

      ///this.UserType
      });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    mobileno = json['mobileno'];
    password = json['password'];
    usertype = json['usertype'];
    username = json['username'];

    /// UserType = json['UserType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['mobileno'] = this.mobileno;
    data['password'] = this.password;
    data['usertype'] = this.usertype;
    data['username'] = this.username;

    ///  data['UserType'] = this.UserType;

    return data;
  }
}

class ProductModel {
  String? productId;
  String? productName;
  String? productCat;
  String? productImage;
  String? productDesc;
  String? productPrice;
  String? productQty;
  String? productUserId;

  ProductModel(
      {this.productId,
      this.productName,
      this.productCat,
      this.productImage,
      this.productDesc,
      this.productPrice,
      this.productQty,
      this.productUserId});

  ProductModel.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    productName = json['productName'];
    productCat = json['productCat'];
    productImage = json['productImage'];
    productDesc = json['productDesc'];
    productPrice = json['productPrice'];
    productQty = json['productQty'];
    productUserId = json['productUserId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['productName'] = this.productName;
    data['productCat'] = this.productCat;
    data['productImage'] = this.productImage;
    data['productDesc'] = this.productDesc;
    data['productPrice'] = this.productPrice;
    data['productQty'] = this.productQty;
    data['productUserId'] = this.productUserId;
    return data;
  }
}

/*
class UserModel {
  late final String? name;
  late final String? email;
  late final String? mobile;
  late final String? password;

  UserModel(
    String _name,
    String _email,
    String _mobileno,
    String _pass, {
    this.name,
    this.email,
    this.mobile,
    this.password,
  });

  UserModel.fromJson(Map<String, dynamic> json, this.mobile, this.name,
      this.email, this.password) {
    name = json['name'];
    email = json['email'];
    mobile = json['mobile'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['mobile'] = mobile;
    data['password'] = password;
    return data;
  }
}

class User {
  Int? id;
  String? email;
  String? password;

  User({this.id, this.email, this.password});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    password = json['Password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['email'] = email;
    data['Password'] = password;
    return data;
  }
}
*/
