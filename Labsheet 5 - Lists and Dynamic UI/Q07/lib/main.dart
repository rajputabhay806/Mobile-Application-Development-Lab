import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'GridView.count icons',
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
    return Scaffold(appBar: AppBar(title: const Text('Icon Grid')), body: GridView.count(crossAxisCount: 3, children: const [Icon(Icons.home, size: 48), Icon(Icons.person, size: 48), Icon(Icons.settings, size: 48), Icon(Icons.star, size: 48), Icon(Icons.school, size: 48), Icon(Icons.favorite, size: 48)]));
  }
}
