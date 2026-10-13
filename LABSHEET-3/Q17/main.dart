// LABSHEET-3 - Q17
// Question: Use a DropdownButton to select a semester.

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
        body: _DropdownScreen(title: 'Semester', items: ['1', '2', '3', '4', '5', '6']),
      ),
    );
  }
}

class _DropdownScreen extends StatefulWidget {
  final String title; final List<String> items;
  const _DropdownScreen({required this.title, required this.items});
  @override State<_DropdownScreen> createState() => _DropdownScreenState();
}
class _DropdownScreenState extends State<_DropdownScreen> {
  late String value = widget.items.first;
  @override Widget build(BuildContext context) => Center(
    child: DropdownButton<String>(
      value: value,
      items: widget.items.map((x) => DropdownMenuItem(value: x, child: Text(x))).toList(),
      onChanged: (v) => setState(() => value = v!),
    ),
  );
}