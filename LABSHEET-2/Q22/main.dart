// LABSHEET-2 - Q22
// Question: Design a simple weather information screen containing location, temperature, weather icon, and other information.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Weather')),
        body: Center(
          child: Card(
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.wb_sunny, size: 90),
                  Text(
                    'HARIdWAR',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text('28°C', style: TextStyle(fontSize: 45)),
                  Text('Sunny'),
                  SizedBox(height: 10),
                  Text('Humidity: 52%'),
                  Text('Wind: 12 km/h'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
