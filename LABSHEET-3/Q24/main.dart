// LABSHEET-3 - Q24
// Question: Create a Flutter Simple Calculator that accepts two numbers and performs operations using buttons.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Lab Sheet 3')),
        body: _CalculatorScreen(),
      ),
    );
  }
}

class _CalculatorScreen extends StatefulWidget {
  @override State<_CalculatorScreen> createState() => _CalculatorScreenState();
}
class _CalculatorScreenState extends State<_CalculatorScreen> {
  final a = TextEditingController(), b = TextEditingController(); String result = '';
  void calc(String op) {
    final x = double.tryParse(a.text) ?? 0, y = double.tryParse(b.text) ?? 0;
    setState(() {
      result = switch (op) {
        '+' => '${x + y}',
        '-' => '${x - y}',
        '*' => '${x * y}',
        '/' => y == 0 ? 'Cannot divide by zero' : '${x / y}',
        _ => ''
      };
    });
  }
  @override Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(20),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextField(controller: a, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Number 1')),
      TextField(controller: b, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Number 2')),
      const SizedBox(height: 15),
      Wrap(spacing: 8, children: ['+','-','*','/'].map((x) => ElevatedButton(onPressed: () => calc(x), child: Text(x))).toList()),
      Text('Result: $result', style: const TextStyle(fontSize: 24)),
    ]),
  );
}