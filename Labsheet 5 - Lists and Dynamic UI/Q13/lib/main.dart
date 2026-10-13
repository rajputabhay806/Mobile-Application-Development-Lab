import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Add item using TextField',
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
  final List<String> items = ['Apple', 'Banana', 'Orange']; final controller = TextEditingController();
  @override
  void initState() { super.initState();  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Add Item')), body: Column(children: [TextField(controller: controller, decoration: const InputDecoration(labelText: 'New item')), ElevatedButton(onPressed: () { final v = controller.text.trim(); if (v.isNotEmpty) setState(() => items.add(v)); controller.clear(); }, child: const Text('Add')), Expanded(child: ListView(children: items.map((e) => ListTile(title: Text(e))).toList()))]));
  }
}
