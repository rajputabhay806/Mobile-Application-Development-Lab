// LABSHEET-2 - Q3
// Question: Demonstrate different text styles such as bold, italic, different font sizes, and text alignment.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Text Styles')),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Bold Text', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              Text('Italic Text', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 22)),
              Text('Large Text', style: TextStyle(fontSize: 32)),
              Text('Centered Text', textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
