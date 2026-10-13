// LABSHEET-3 - Q22
// Question: Create a Flutter Registration Form UI with name, email, password, gender, course, and Register button.

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
        body: _RegistrationScreen(),
      ),
    );
  }
}

class _RegistrationScreen extends StatefulWidget {
  @override State<_RegistrationScreen> createState() => _RegistrationScreenState();
}
class _RegistrationScreenState extends State<_RegistrationScreen> {
  String gender = 'Male', course = 'BCA';
  @override Widget build(BuildContext context) => ListView(
    padding: const EdgeInsets.all(20),
    children: [
      const TextField(decoration: InputDecoration(labelText: 'Name', border: OutlineInputBorder())),
      const SizedBox(height: 10),
      const TextField(decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder())),
      const SizedBox(height: 10),
      const TextField(obscureText: true, decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder())),
      RadioListTile(value: 'Male', groupValue: gender, onChanged: (v) => setState(() => gender = v!), title: const Text('Male')),
      RadioListTile(value: 'Female', groupValue: gender, onChanged: (v) => setState(() => gender = v!), title: const Text('Female')),
      DropdownButton<String>(value: course, isExpanded: true, items: ['BCA','BBA','BSc'].map((x) => DropdownMenuItem(value: x, child: Text(x))).toList(), onChanged: (v) => setState(() => course = v!)),
      ElevatedButton(onPressed: () {}, child: const Text('Register')),
    ],
  );
}