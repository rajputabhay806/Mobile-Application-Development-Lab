// LABSHEET-3 - Q7
// Question: Accept a student's name and marks in three subjects and display the total marks.

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
        body: _MarksScreen(),
      ),
    );
  }
}

class _MarksScreen extends StatefulWidget {
  @override State<_MarksScreen> createState() => _MarksScreenState();
}
class _MarksScreenState extends State<_MarksScreen> {
  final name = TextEditingController(), m1 = TextEditingController(), m2 = TextEditingController(), m3 = TextEditingController();
  String result = '';
  @override Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(20),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextField(controller: name, decoration: const InputDecoration(labelText: 'Student name')),
      TextField(controller: m1, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Subject 1')),
      TextField(controller: m2, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Subject 2')),
      TextField(controller: m3, keyboardType: TextInputType.number, decoration: const InputDecoration(labelText: 'Subject 3')),
      ElevatedButton(onPressed: () {
        final total = (double.tryParse(m1.text) ?? 0) + (double.tryParse(m2.text) ?? 0) + (double.tryParse(m3.text) ?? 0);
        setState(() => result = '${name.text}: Total = $total');
      }, child: const Text('Calculate Total')),
      Text(result, style: const TextStyle(fontSize: 20)),
    ]),
  );
}