import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Product detail',
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
  final product = TextEditingController(text: 'Notebook'); final price = TextEditingController(text: '50');
  @override
  void initState() { super.initState();  }
  @override
  Widget build(BuildContext context) {

return Scaffold(appBar: AppBar(title: const Text('Product detail')),
 body: Padding(padding: const EdgeInsets.all(20), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
  TextField(controller: product, decoration: const InputDecoration(labelText: 'Product name')), TextField(controller: price, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Price')),
  const SizedBox(height: 16),
  ElevatedButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage(text: 'Product: ${product.text} | Price: ${price.text}'))), child: const Text('View Product')),
 ])));

  }
}


class DetailPage extends StatelessWidget {
 final String text;
 const DetailPage({super.key, required this.text});
 @override Widget build(BuildContext context) => Scaffold(appBar: AppBar(title: const Text('Details')),
  body: Center(child: Padding(padding: const EdgeInsets.all(20), child: Text(text, style: const TextStyle(fontSize: 22)))));
}
