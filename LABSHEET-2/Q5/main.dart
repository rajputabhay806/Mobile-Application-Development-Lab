// LABSHEET-2 - Q5
// Question: Display different icons using the Icon widget.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Icon Widget')),
        body: const Row(
          children: [
            Icon(Icons.star, size: 14),
            Icon(Icons.favorite, size: 14),
            Icon(Icons.check, size: 14),
            Icon(Icons.square, size: 14),
          ],
        ),
      ),
    );
  }
}
