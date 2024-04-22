import 'package:flutter/material.dart';
import 'package:ecom/product_list.dart';
import 'package:ecom/shopping_cart.dart';
import 'package:ecom/checkout.dart';

void main() {
  runApp(ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ProductList(),
        '/cart': (context) => ShoppingCart(),
        '/checkout': (context) => Checkout(),
      },
    );
  }
}
