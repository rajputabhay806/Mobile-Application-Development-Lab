// LABSHEET-3 - Q5
// Question: Create an ElevatedButton that displays a message using SnackBar.

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
        body: Center(child: ElevatedButton(
  onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(content: Text('Button pressed successfully!')),
  ),
  child: const Text('Show SnackBar'),
)),
      ),
    );
  }
}
