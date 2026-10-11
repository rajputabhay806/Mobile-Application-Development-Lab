// LABSHEET-2 - Q16
// Question: Display multiple products using Container and Card widgets.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class Product {
  final String name;
  final String price;
  const Product(this.name, this.price);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const products = [
      Product('Headphones', '₹1999'),
      Product('Backpack', '₹899'),
      Product('Watches', '₹2,499'),
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Products')),
        body: ListView(
          padding: const EdgeInsets.all(12),
          children: products
              .map(
                (p) => Card(
                  child: ListTile(
                    leading: const Icon(Icons.shopping_bag),
                    title: Text(p.name),
                    subtitle: Text(p.price),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
