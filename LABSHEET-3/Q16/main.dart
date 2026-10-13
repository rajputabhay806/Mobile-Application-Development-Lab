// LABSHEET-3 - Q16
// Question: Use Radio buttons to select a course from three options.

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
        body: _CourseScreen(),
      ),
    );
  }
}

class _CourseScreen extends StatefulWidget {
  @override State<_CourseScreen> createState() => _CourseScreenState();
}
class _CourseScreenState extends State<_CourseScreen> {
  String course = 'BCA';
  @override Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      for (final x in ['BCA', 'BBA', 'BSc']) RadioListTile(value: x, groupValue: course, onChanged: (v) => setState(() => course = v!), title: Text(x)),
      Text('Selected Course: $course'),
    ],
  );
}