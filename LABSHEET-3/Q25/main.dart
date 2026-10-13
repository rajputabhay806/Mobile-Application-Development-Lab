// LABSHEET-3 - Q25
// Question: Develop a Student Result Application that accepts student name and marks in three subjects, calculates total and percentage, and displays Pass/Fail.

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
        body: _ResultScreen(),
      ),
    );
  }
}

class _ResultScreen extends StatefulWidget {
  @override State<_ResultScreen> createState() => _ResultScreenState();
}
class _ResultScreenState extends State<_ResultScreen> {
  final name = TextEditingController(), m1 = TextEditingController(), m2 = TextEditingController(), m3 = TextEditingController();
  String result = '';
  @override Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.all(20),
    children: [
      TextField(controller: name, decoration: const InputDecoration(labelText: 'Student Name')),
      TextField(controller: m1, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Subject 1 Marks')),
      TextField(controller: m2, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Subject 2 Marks')),
      TextField(controller: m3, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Subject 3 Marks')),
      const SizedBox(height: 15),
      ElevatedButton(onPressed: () {
        final total = (double.tryParse(m1.text) ?? 0) + (double.tryParse(m2.text) ?? 0) + (double.tryParse(m3.text) ?? 0);
        final percentage = total / 3;
        final pass = percentage >= 40;
        setState(() => result = '${name.text}\\nTotal: $total\\nPercentage: ${percentage.toStringAsFixed(2)}%\\nResult: ${pass ? 'Pass' : 'Fail'}');
      }, child: const Text('Calculate Result')),
      const SizedBox(height: 15),
      Text(result, style: const TextStyle(fontSize: 22)),
    ],
  );
}