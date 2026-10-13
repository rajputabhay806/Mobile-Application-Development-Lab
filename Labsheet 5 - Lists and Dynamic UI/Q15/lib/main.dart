import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Dismissible list',
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
  final List<String> items = ['Apple', 'Banana', 'Orange'];
  @override
  void initState() { super.initState();  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Swipe to Delete')), body: ListView.builder(itemCount: items.length, itemBuilder: (_, i) { final item = items[i]; return Dismissible(key: ValueKey(item), background: Container(color: Colors.red), onDismissed: (_) => setState(() => items.remove(item)), child: ListTile(title: Text(item))); }));
  }
}
