// LABSHEET-3 - Q3
// Question: Accept two numbers and perform addition, subtraction, multiplication, and division using buttons.

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
  final a = TextEditingController(), b = TextEditingController();
  String result = '';
  void calculate(String op) {
    final x = double.tryParse(a.text) ?? 0, y = double.tryParse(b.text) ?? 0;
    setState(() {
      if (op == '+') result = '${x + y}';
      if (op == '-') result = '${x - y}';
      if (op == '*') result = '${x * y}';
      if (op == '/') result = y == 0 ? 'Cannot divide by zero' : '${x / y}';
    });
  }
  @override Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(20),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextField(controller: a, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'First number')),
      TextField(controller: b, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Second number')),
      const SizedBox(height: 15),
      Wrap(spacing: 8, children: ['+', '-', '*', '/'].map((op) => ElevatedButton(onPressed: () => calculate(op), child: Text(op))).toList()),
      const SizedBox(height: 20),
      Text('Result: $result', style: const TextStyle(fontSize: 24)),
    ]),
  );
}