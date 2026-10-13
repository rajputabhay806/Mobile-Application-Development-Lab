// LABSHEET-3 - Q18
// Question: Use a DropdownButton to select a department.

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
        body: _DropdownScreen(title: 'Department', items: ['Computer Science', 'Management', 'Commerce', 'Arts']),
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