// LABSHEET-3 - Q1
// Question: Accept a student's name using a TextField and display it on the screen.

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
        body: _StudentNameScreen(),
      ),
    );
  }
}

class _StudentNameScreen extends StatefulWidget {
  @override
  State<_StudentNameScreen> createState() => _StudentNameScreenState();
}
class _StudentNameScreenState extends State<_StudentNameScreen> {
  final controller = TextEditingController();
  String name = '';
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(20),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextField(controller: controller, decoration: const InputDecoration(labelText: 'Student Name', border: OutlineInputBorder())),
      const SizedBox(height: 15),
      ElevatedButton(onPressed: () => setState(() => name = controller.text), child: const Text('Display')),
      const SizedBox(height: 20),
      Text('Name: $name', style: const TextStyle(fontSize: 24)),
    ]),
  );
}