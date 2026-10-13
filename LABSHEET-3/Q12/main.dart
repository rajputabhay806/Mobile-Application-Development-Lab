// LABSHEET-3 - Q12
// Question: Calculate the area of a rectangle using length and width entered by the user.

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
        body: _RectangleScreen(),
      ),
    );
  }
}

class _RectangleScreen extends StatefulWidget {
  @override State<_RectangleScreen> createState() => _RectangleScreenState();
}
class _RectangleScreenState extends State<_RectangleScreen> {
  final l = TextEditingController(), w = TextEditingController(); String result = '';
  @override Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(20),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextField(controller: l, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Length')),
      TextField(controller: w, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Width')),
      ElevatedButton(onPressed: () {
        final a = double.tryParse(l.text) ?? 0, b = double.tryParse(w.text) ?? 0;
        setState(() => result = 'Area = ${a * b}');
      }, child: const Text('Calculate Area')),
      Text(result, style: const TextStyle(fontSize: 22)),
    ]),
  );
}