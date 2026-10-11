// LABSHEET-2 - Q20
// Question: Design a simple food menu screen using images, text, icons, and buttons.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Food Menu')),
        body: ListView(
          padding: const EdgeInsets.all(12),
          children: const [
            Card(
              child: ListTile(
                leading: Icon(Icons.local_pizza),
                title: Text('Pizza'),
                subtitle: Text('₹249'),
                trailing: Icon(Icons.add_shopping_cart),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.lunch_dining),
                title: Text('Burger'),
                subtitle: Text('₹149'),
                trailing: Icon(Icons.add_shopping_cart),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.icecream),
                title: Text('Shake'),
                subtitle: Text('₹99'),
                trailing: Icon(Icons.add_shopping_cart),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
