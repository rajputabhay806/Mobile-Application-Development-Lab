// LABSHEET-3 - Q20
// Question: Create an application containing Checkbox, Radio, DropdownButton, and Switch widgets.

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
        body: _AllControlsScreen(),
      ),
    );
  }
}

class _AllControlsScreen extends StatefulWidget {
  @override State<_AllControlsScreen> createState() => _AllControlsScreenState();
}
class _AllControlsScreenState extends State<_AllControlsScreen> {
  bool check = false, sw = false;
  String gender = 'Male', course = 'BCA';
  @override Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.all(16),
    children: [
      CheckboxListTile(value: check, onChanged: (v) => setState(() => check = v!), title: const Text('Agree')),
      RadioListTile(value: 'Male', groupValue: gender, onChanged: (v) => setState(() => gender = v!), title: const Text('Male')),
      RadioListTile(value: 'Female', groupValue: gender, onChanged: (v) => setState(() => gender = v!), title: const Text('Female')),
      DropdownButton<String>(value: course, isExpanded: true, items: ['BCA','BBA','BSc'].map((x) => DropdownMenuItem(value: x, child: Text(x))).toList(), onChanged: (v) => setState(() => course = v!)),
      SwitchListTile(value: sw, onChanged: (v) => setState(() => sw = v), title: const Text('Setting')),
    ],
  );
}