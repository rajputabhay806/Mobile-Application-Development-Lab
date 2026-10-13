import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'ListView.separated',
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
    final items = ['One','Two','Three','Four']; return Scaffold(appBar: AppBar(title: const Text('Separated')), body: ListView.separated(itemCount: items.length, itemBuilder: (_, i) => ListTile(title: Text(items[i])), separatorBuilder: (_, __) => const Divider()));
  }
}
