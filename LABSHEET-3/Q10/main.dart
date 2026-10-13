// LABSHEET-3 - Q10
// Question: Check whether a number entered by the user is positive, negative, or zero.

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
        body: _PositiveNegativeScreen(),
      ),
    );
  }
}

class _PositiveNegativeScreen extends StatefulWidget {
  @override State<_PositiveNegativeScreen> createState() => _PositiveNegativeScreenState();
}
class _PositiveNegativeScreenState extends State<_PositiveNegativeScreen> {
  final c = TextEditingController(); String result = '';
  @override Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(20),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextField(controller: c, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Enter number')),
      ElevatedButton(onPressed: () {
        final n = double.tryParse(c.text) ?? 0;
        setState(() => result = n > 0 ? 'Positive' : n < 0 ? 'Negative' : 'Zero');
      }, child: const Text('Check')),
      Text(result, style: const TextStyle(fontSize: 25)),
    ]),
  );
}