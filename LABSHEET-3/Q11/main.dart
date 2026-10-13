// LABSHEET-3 - Q11
// Question: Convert Celsius temperature into Fahrenheit using user input.

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
        body: _CelsiusScreen(),
      ),
    );
  }
}

class _CelsiusScreen extends StatefulWidget {
  @override State<_CelsiusScreen> createState() => _CelsiusScreenState();
}
class _CelsiusScreenState extends State<_CelsiusScreen> {
  final c = TextEditingController(); String result = '';
  @override Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(20),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextField(controller: c, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Celsius')),
      ElevatedButton(onPressed: () {
        final n = double.tryParse(c.text) ?? 0;
        setState(() => result = 'Fahrenheit = ${(n * 9 / 5 + 32).toStringAsFixed(2)}°F');
      }, child: const Text('Convert')),
      Text(result, style: const TextStyle(fontSize: 22)),
    ]),
  );
}