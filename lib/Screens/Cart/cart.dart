import 'package:pharmacy_hn_clone/Screens/Cart/model/model_cart_product.dart';

class CartModel {
  late CatalogModel _catalog;

  //Collection of IDs - store Ids of each item
  final List<dynamic> _itemIds = [];
  //Get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

  //Get items in the cart
  List<ModelCartProduct>? get items =>
      _itemIds.map((id) => _catalog.getById(id)).toList();

  List<ModelCartProduct> get item =>
      _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get total price
  num get totalPrice =>
      items!.fold(0, (total, current) => total + current.productPrice!);
}
