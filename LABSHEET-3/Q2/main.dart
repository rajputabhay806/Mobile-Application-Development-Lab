// LABSHEET-3 - Q2
// Question: Accept two numbers using TextField and display their sum.

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
        body: _SumScreen(),
      ),
    );
  }
}

class _SumScreen extends StatefulWidget {
  @override State<_SumScreen> createState() => _SumScreenState();
}
class _SumScreenState extends State<_SumScreen> {
  final a = TextEditingController(), b = TextEditingController();
  double? sum;
  @override Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(20),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextField(controller: a, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'First number')),
      TextField(controller: b, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Second number')),
      const SizedBox(height: 15),
      ElevatedButton(onPressed: () => setState(() => sum = (double.tryParse(a.text) ?? 0) + (double.tryParse(b.text) ?? 0)), child: const Text('Add')),
      if (sum != null) Text('Sum = $sum', style: const TextStyle(fontSize: 24)),
    ]),
  );
}