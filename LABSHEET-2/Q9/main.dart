// LABSHEET-2 - Q9
// Question: Display multiple Text widgets vertically using the Column widget.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Column')),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
