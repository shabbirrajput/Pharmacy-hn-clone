class ModelCartProduct {
  int? cartId;
  int? cartProductId;
  int? cartProductQty;
  int? cartUserId;
  int? productId;
  String? productName;
  int? productCat;
  String? productImage;
  String? productDesc;
  int? productPrice;
  int? productQty;
  int? productUserId;
  ModelCartProduct(
      {this.cartId,
      this.cartProductId,
      this.cartProductQty,
      this.cartUserId,
      this.productId,
      this.productName,
      this.productCat,
      this.productImage,
      this.productDesc,
      this.productPrice,
      this.productQty,
      this.productUserId});

  ModelCartProduct.fromJson(Map<String, dynamic> json) {
    cartId = json['cartId'];
    cartProductId = json['cartProductId'];
    cartProductQty = json['productQty'];
    cartUserId = json['cartUserId'];
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
    data['cartId'] = cartId;
    data['cartProductId'] = cartProductId;
    data['productQty'] = cartProductQty;
    data['cartUserId'] = cartUserId;
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
