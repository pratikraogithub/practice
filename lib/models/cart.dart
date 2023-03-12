import 'package:flutter_application_1/models/catalog.dart';

class CartModel {
  // catalogfield
  late catalogModel _catalog;

  //collection of ids-store IDs of each item
  final List<int> _itemIds = [];

  // Get catalog
  catalogModel get catalog => _catalog;

  set catalog(catalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
