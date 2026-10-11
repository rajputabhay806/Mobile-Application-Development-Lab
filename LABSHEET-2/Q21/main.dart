// LABSHEET-2 - Q21
// Question: Design a simple calculator interface using buttons and basic layout widgets.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Calculator')),
        body: Column(
          children: [
            const Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('0', style: TextStyle(fontSize: 48)),
                ),
              ),
            ),
            for (final row in [
              ['7', '8', '9', '/'],
              ['4', '5', '6', '*'],
              ['1', '2', '3', '-'],
              ['0', 'C', '=', '+'],
            ])
              Row(
                children: row.map((value) => Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(value, style: const TextStyle(fontSize: 22)),
                    ),
                  ),
                )).toList(),
              ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
