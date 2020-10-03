import 'package:flutter/widgets.dart';

class CartItem {
  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem({
    this.id,
    this.title,
    this.quantity,
    this.price,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items;

  Map<String, CartItem> get items {
    return {...items};
  }

  void addItems(String productId, double price, String title) {
    if (_items.containsKey(productId)) {
      items.update(
          productId,
          (existingCartItem) => CartItem(
              id: existingCartItem.id,
              price: existingCartItem.price,
              title: existingCartItem.title,
              quantity: existingCartItem.quantity + 1));
    } else {
      items.putIfAbsent(
          productId,
          () => CartItem(
              id: DateTime.now().toString(),
              title: title,
              price: price,
              quantity: 1));
    }
  }
}
