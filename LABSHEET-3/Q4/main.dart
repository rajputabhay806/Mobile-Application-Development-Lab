// LABSHEET-3 - Q4
// Question: Create a button that changes the displayed text when pressed.

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
        body: _ChangeTextScreen(),
      ),
    );
  }
}

class _ChangeTextScreen extends StatefulWidget {
  @override State<_ChangeTextScreen> createState() => _ChangeTextScreenState();
}
class _ChangeTextScreenState extends State<_ChangeTextScreen> {
  String text = 'Original Text';
  @override Widget build(BuildContext context) => Center(
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(text, style: const TextStyle(fontSize: 25)),
      const SizedBox(height: 20),
      ElevatedButton(onPressed: () => setState(() => text = 'Text Changed!'), child: const Text('Change Text')),
    ]),
  );
}