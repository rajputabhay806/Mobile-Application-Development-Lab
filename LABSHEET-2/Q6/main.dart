// LABSHEET-2 - Q6
// Question: Display Text, Image, and Icon widgets on the same screen.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Text + Image + Icon')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.flutter_dash, size: 70),
              const SizedBox(height: 15),
              const Text('Flutter UI', style: TextStyle(fontSize: 26)),
              const SizedBox(height: 15),
              Image.network('https://picsum.photos/200', width: 200, height: 150),
            ],
          ),
        ),
      ),
    );
  }
}
