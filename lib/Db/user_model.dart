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
  int? productId;
  String? productName;
  int? productCat;
  String? productImage;
  String? productDesc;
  int? productPrice;
  int? productQty;
  int? productUserId;

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

class CartModel {
  int? cartId;
  int? cartProductId;
  int? cartProductQty;
  int? cartUserId;

  CartModel(
      {this.cartId, this.cartProductId, this.cartProductQty, this.cartUserId});

  CartModel.fromJson(Map<String, dynamic> json) {
    cartId = json['cartId'];
    cartProductId = json['cartProductId'];
    cartProductQty = json['cartProductQty'];
    cartUserId = json['cartUserId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cartId'] = this.cartId;
    data['cartProductId'] = this.cartProductId;
    data['cartProductQty'] = this.cartProductQty;
    data['cartUserId'] = this.cartUserId;
    return data;
  }
}

class OrderModel {
  int? orderId;
  int? orderQty;
  int? orderProductId;
  int? orderUserId;
  int? orderStatus;

  OrderModel(
      {this.orderId,
      this.orderQty,
      this.orderProductId,
      this.orderUserId,
      this.orderStatus});

  OrderModel.fromJson(Map<String, dynamic> json) {
    orderId = json['orderId'];
    orderQty = json['orderQty'];
    orderProductId = json['orderProductId'];
    orderUserId = json['orderUserId'];
    orderStatus = json['orderStatus'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['orderId'] = this.orderId;
    data['orderQty'] = this.orderQty;
    data['orderProductId'] = this.orderProductId;
    data['orderUserId'] = this.orderUserId;
    data['orderStatus'] = this.orderStatus;
    return data;
  }
}
