import 'package:path_provider/path_provider.dart';
import 'package:pharmacy_hn_clone/Db/user_model.dart';

import 'package:path/path.dart';
import 'dart:io' as io;

import 'package:sqflite/sqflite.dart';

class DbHelper {
  late Database _db;

  static const String DB_Name = 'pharmacy.db';
  static const String Table_User = 'user';
  static const int Version = 1;
  static const String C_UserID = 'id';
  static const String C_UserName = 'name';
  static const String C_Email = 'email';
  static const String C_MobileNo = 'mobileno';
  static const String C_Password = 'password';
  static const String C_UserType = 'usertype';
  static const String C_UserTypeName = 'username';

  static const String Table_Product = 'product';
  static const String C_ProductID = 'productId';
  static const String C_ProductName = 'productName';
  static const String C_ProductCat = 'productCat';
  static const String C_ProductImage = 'productImage';
  static const String C_ProductDesc = 'productDesc';
  static const String C_ProductPrice = 'productPrice';
  static const String C_ProductQty = 'productQty';
  static const String C_ProductUserId = 'productUserId';

  static const String Table_Cart = 'cart';
  static const String C_CartID = 'cartId';
  static const String C_CartProductID = 'cartProductId';
  static const String C_CartQty = 'productQty';
  static const String C_CartUserId = 'cartUserId';

  static const String Table_Order = 'order';
  static const String C_OrderID = 'orderId';
  static const String C_OrderQty = 'orderQty';
  static const String C_OrderProductId = 'orderProductId';
  static const String C_OrderUserId = 'orderUserId';
  static const String C_OrderStatus = 'orderStatus';

  Future<Database> get db async {
    /* if (_db != null) {
      return _db;
    }*/

    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_Name);
    var db = await openDatabase(path, version: Version, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int intVersion) async {
    await db.execute("CREATE TABLE $Table_User ("
        " $C_UserID INTEGER PRIMARY KEY, "
        " $C_UserName TEXT, "
        " $C_Email TEXT,"
        " $C_MobileNo TEXT,"
        " $C_Password TEXT,"
        " $C_UserType INTEGER,"
        " $C_UserTypeName TEXT"
        ")");

    await db.execute("CREATE TABLE $Table_Product ("
        " $C_ProductID INTEGER PRIMARY KEY, "
        " $C_ProductName TEXT, "
        " $C_ProductCat INTEGER,"
        " $C_ProductImage TEXT,"
        " $C_ProductDesc TEXT,"
        " $C_ProductPrice INTEGER,"
        " $C_ProductQty INTEGER,"
        " $C_ProductUserId INTEGER"
        ")");

    await db.execute("CREATE TABLE $Table_Cart ("
        " $C_CartID INTEGER PRIMARY KEY,"
        " $C_CartProductID INTEGER,"
        " $C_CartQty INTEGER,"
        " $C_CartUserId INTEGER"
        ")");

    await db.execute("CREATE TABLE $Table_Order ("
        " $C_OrderID INTEGER PRIMARY KEY,"
        " $C_OrderQty INTEGER,"
        " $C_OrderProductId INTEGER,"
        " $C_OrderUserId INTEGER,"
        " $C_OrderStatus INTEGER"
        ")");
  }

  Future<int> saveData(UserModel user) async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_User, user.toJson());
    return res;
  }

  Future<int> saveProductData(ProductModel product) async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_Product, product.toJson());
    return res;
  }

  Future<int> saveCartData(CartModel cart) async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_Cart, cart.toJson());
    return res;
  }

  Future<CartModel> getCartProduct(int productId, int userId) async {
    var dbClient = await db;
    var res = await dbClient.rawQuery("SELECT * FROM $Table_Cart WHERE "
        "$C_CartProductID = $productId AND "
        "$C_CartUserId = $userId");

    if (res.length > 0) {
      return CartModel.fromJson(res.first);
    }
    return CartModel();
  }

  ///RemoveFromCart
  Future<int> deleteCategory(int id) async {
    var dbClient = await db;
    return await dbClient
        .rawDelete('DELETE FROM $Table_Cart WHERE $C_CartID = ?', [id]);
  }

  Future<int> saveOrderData(OrderModel order) async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_Order, order.toJson());
    return res;
  }

  Future<UserModel> getLoginUser(String email, String password) async {
    var dbClient = await db;
    var res = await dbClient.rawQuery("SELECT * FROM $Table_User WHERE "
        "$C_Email = '$email' AND "
        "$C_Password = '$password'");

    if (res.length > 0) {
      return UserModel.fromJson(res.first);
    }
    return UserModel();
  }

  Future<List<ProductModel>> getUserProduct(int userId) async {
    var dbClient = await db;
    var res = await dbClient.rawQuery("SELECT * FROM $Table_Product WHERE "
        "$C_ProductUserId = $userId ");
    try {
      List<ProductModel> mProductModel = List<ProductModel>.from(
          res.map((model) => ProductModel.fromJson(model)));

      return mProductModel;
    } catch (e) {
      return [];
    }
  }

  Future<List<ProductModel>> getCategoryProduct(int categoryId) async {
    var dbClient = await db;
    var res = await dbClient.rawQuery("SELECT * FROM $Table_Product WHERE "
        "$C_ProductCat = $categoryId ");
    try {
      List<ProductModel> mProductModel = List<ProductModel>.from(
          res.map((model) => ProductModel.fromJson(model)));
      return mProductModel;
    } catch (e) {
      return [];
    }
  }

  Future<UserModel> getCheckEmailUser(String email) async {
    var dbClient = await db;
    var res = await dbClient.rawQuery("SELECT * FROM $Table_User WHERE "
        "$C_Email = '$email'");

    if (res.length > 0) {
      return UserModel.fromJson(res.first);
    }
    return UserModel();
  }

/*
  Future<UserModel> getUserTypeCheck(String usertype) async {
    var dbClient = await db;
    var res = await dbClient
        .rawQuery("INSERT INTO $Table_User ($C_UserType) VALUES ('Vendor')");

    if (res.length > 0) {
      return UserModel.fromJson(res.first);
    }
    return UserModel();
  }
*/

  Future<int> updateUser(UserModel user) async {
    var dbClient = await db;
    var res = await dbClient.update(Table_User, user.toJson(),
        where: '$C_UserID = ?', whereArgs: [user.id]);
    return res;
  }

  Future<int> deleteUser(String user_id) async {
    var dbClient = await db;
    var res = await dbClient
        .delete(Table_User, where: '$C_UserID = ?', whereArgs: [user_id]);
    return res;
  }
}
