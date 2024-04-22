// product_list.dart
import 'package:flutter/material.dart';
import 'package:ecom/product.dart';

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text(product.description),
            trailing: Text('\$${product.price.toString()}'),
            onTap: () {
              Navigator.pushNamed(context, '/cart', arguments: product);
            },
          );
        },
      ),
    );
  }
}

List<Product> products = [
  Product(name: 'Product 1', description: 'Description of product 1', price: 10),
  Product(name: 'Product 2', description: 'Description of product 2', price: 20),
  // Add more products as needed
];
