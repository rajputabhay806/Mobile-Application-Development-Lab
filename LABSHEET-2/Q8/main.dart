// LABSHEET-2 - Q8
// Question: Display multiple Text widgets horizontally using the Row widget.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Row')),
        body: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('One'),
              Text('Two'),
              Text('Three'),
            ],
          ),
        ),
      ),
    );
  }
}
