import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String id;
  final double price;
  final String title;
  final int quantity;

  CartItem(
    this.id,
    this.price,
    this.title,
    this.quantity,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: FittedBox(child: Text('\$$price')),
            ),
          ),
          subtitle: Text('Total: \$${price * quantity}'),
          trailing: Text('$quantity X'),
        ),
      ),
    );
  }
}
