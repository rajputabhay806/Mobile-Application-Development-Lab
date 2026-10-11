// LABSHEET-2 - Q7
// Question: Use the Container widget and customize its height, width, padding, margin, and decoration.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Container')),
        body: Center(
          child: Container(
            width: 250,
            height: 150,
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Center(child: Text('Customized Container')),
          ),
        ),
      ),
    );
  }
}
