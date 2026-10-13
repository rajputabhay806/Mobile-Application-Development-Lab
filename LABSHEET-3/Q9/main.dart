// LABSHEET-3 - Q9
// Question: Check whether a number entered by the user is even or odd.

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
        body: _CheckNumberScreen(mode: 'Even or Odd'),
      ),
    );
  }
}

class _CheckNumberScreen extends StatefulWidget {
  final String mode;
  const _CheckNumberScreen({required this.mode});
  @override State<_CheckNumberScreen> createState() => _CheckNumberScreenState();
}
class _CheckNumberScreenState extends State<_CheckNumberScreen> {
  final c = TextEditingController(); String result = '';
  @override Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(20),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextField(controller: c, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Enter number')),
      ElevatedButton(onPressed: () {
        final n = int.tryParse(c.text) ?? 0;
        setState(() => result = n % 2 == 0 ? 'Even' : 'Odd');
      }, child: const Text('Check')),
      Text(result, style: const TextStyle(fontSize: 25)),
    ]),
  );
}