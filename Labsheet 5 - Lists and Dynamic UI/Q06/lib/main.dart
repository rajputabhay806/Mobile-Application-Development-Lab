import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Horizontal list',
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
    return Scaffold(appBar: AppBar(title: const Text('Horizontal')), body: SizedBox(height: 140, child: ListView(scrollDirection: Axis.horizontal, children: List.generate(10, (i) => Container(width: 120, margin: const EdgeInsets.all(8), color: Colors.indigo.shade100, child: Center(child: Text('Item ${i+1}'))))));
  }
}
