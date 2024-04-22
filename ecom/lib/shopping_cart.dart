// shopping_cart.dart
import 'package:flutter/material.dart';
import 'package:ecom/product.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  List<Product> cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final product = cartItems[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('\$${product.price.toString()}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            final Product product = ModalRoute.of(context)!.settings.arguments as Product;
            cartItems.add(product);
          });
        },
        child: Icon(Icons.add_shopping_cart),
      ),
    );
  }
}
