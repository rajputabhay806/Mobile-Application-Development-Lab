import 'package:flutter/material.dart';

void main() => runApp(const LabApp());

class LabApp extends StatelessWidget {
  const LabApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Increment decrement reset',
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
  int counter = 0;
  @override
  void initState() { super.initState();  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Counter Controls')), body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Text('$counter', style: const TextStyle(fontSize: 40)), Wrap(spacing: 8, children: [ElevatedButton(onPressed: () => setState(() => counter++), child: const Text('Increment')), ElevatedButton(onPressed: () => setState(() => counter--), child: const Text('Decrement')), ElevatedButton(onPressed: () => setState(() => counter = 0), child: const Text('Reset'))])])));
  }
}
