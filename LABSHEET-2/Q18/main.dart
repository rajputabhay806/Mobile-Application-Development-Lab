// LABSHEET-2 - Q18
// Question: Demonstrate the use of Padding and Margin for arranging UI elements properly.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Padding & Margin')),
        body: Container(
          margin: const EdgeInsets.all(30),
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Text(
            'This text has padding inside the container and margin outside it.',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
