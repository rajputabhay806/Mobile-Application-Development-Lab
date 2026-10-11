// LABSHEET-2 - Q19
// Question: Demonstrate different alignment options using Center and Align widgets.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Alignment')),
        body: Column(
          children: [
            const SizedBox(height: 30),
            Text('TOP LEFT')
            const Center(child: Text('CENTER', style: TextStyle(fontSize: 22))),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(onPressed: () {}, child: const Text('BOTTOM RIGHT')),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
