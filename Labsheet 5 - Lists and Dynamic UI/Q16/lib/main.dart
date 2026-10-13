import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Search names',
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
  String search = ''; final List<String> names = ['Amit','Neha','Rahul','Priya','Kavya'];
  @override
  void initState() { super.initState();  }
  @override
  Widget build(BuildContext context) {
    final filtered = names.where((n) => n.toLowerCase().contains(search.toLowerCase())).toList(); return Scaffold(appBar: AppBar(title: const Text('Search Names')), body: Column(children: [TextField(decoration: const InputDecoration(labelText: 'Search'), onChanged: (v) => setState(() => search = v)), Expanded(child: ListView(children: filtered.map((n) => ListTile(title: Text(n))).toList()))]));
  }
}
