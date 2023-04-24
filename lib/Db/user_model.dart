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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['mobileno'] = mobileno;
    data['password'] = password;
    data['usertype'] = usertype;
    data['username'] = username;

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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['productId'] = productId;
    data['productName'] = productName;
    data['productCat'] = productCat;
    data['productImage'] = productImage;
    data['productDesc'] = productDesc;
    data['productPrice'] = productPrice;
    data['productQty'] = productQty;
    data['productUserId'] = productUserId;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cartId'] = cartId;
    data['cartProductId'] = cartProductId;
    data['cartProductQty'] = cartProductQty;
    data['cartUserId'] = cartUserId;
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['orderId'] = orderId;
    data['orderQty'] = orderQty;
    data['orderProductId'] = orderProductId;
    data['orderUserId'] = orderUserId;
    data['orderStatus'] = orderStatus;
    return data;
  }
}
