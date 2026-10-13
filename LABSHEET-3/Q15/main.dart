// LABSHEET-3 - Q15
// Question: Use Radio buttons to select the student's gender.

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
        body: _GenderScreen(),
      ),
    );
  }
}

class _GenderScreen extends StatefulWidget {
  @override State<_GenderScreen> createState() => _GenderScreenState();
}
class _GenderScreenState extends State<_GenderScreen> {
  String gender = 'Male';
  @override Widget build(BuildContext context) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      RadioListTile(value: 'Male', groupValue: gender, onChanged: (v) => setState(() => gender = v!), title: const Text('Male')),
      RadioListTile(value: 'Female', groupValue: gender, onChanged: (v) => setState(() => gender = v!), title: const Text('Female')),
      RadioListTile(value: 'Other', groupValue: gender, onChanged: (v) => setState(() => gender = v!), title: const Text('Other')),
      Text('Selected: $gender'),
    ],
  );
}