import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Product model and list',
    theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
    home: const HomePage(),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() { super.initState();  }
  @override
  Widget build(BuildContext context) {
    final products = [Product('Pen', 10), Product('Notebook', 50), Product('Bag', 600)]; return Scaffold(appBar: AppBar(title: const Text('Products')), body: ListView.builder(itemCount: products.length, itemBuilder: (_, i) => ListTile(title: Text(products[i].name), trailing: Text('₹${products[i].price.toStringAsFixed(0)}'))));
  }
}

class Product { final String name; final double price; const Product(this.name, this.price); }
