// LABSHEET-3 - Q13
// Question: Calculate BMI using height and weight entered by the user.

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
        body: _BmiScreen(),
      ),
    );
  }
}

class _BmiScreen extends StatefulWidget {
  @override State<_BmiScreen> createState() => _BmiScreenState();
}
class _BmiScreenState extends State<_BmiScreen> {
  final h = TextEditingController(), w = TextEditingController(); String result = '';
  @override Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(20),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextField(controller: h, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Height (metres)')),
      TextField(controller: w, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Weight (kg)')),
      ElevatedButton(onPressed: () {
        final height = double.tryParse(h.text) ?? 0, weight = double.tryParse(w.text) ?? 0;
        final bmi = height > 0 ? weight / (height * height) : 0;
        setState(() => result = 'BMI = ${bmi.toStringAsFixed(2)}');
      }, child: const Text('Calculate BMI')),
      Text(result, style: const TextStyle(fontSize: 22)),
    ]),
  );
}