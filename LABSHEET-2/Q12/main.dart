// LABSHEET-2 - Q12
// Question: Design a simple business card containing name, phone number, email, and profile image.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Business Card')),
        body: Center(
          child: Card(
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  CircleAvatar(radius: 45, child: Icon(Icons.person, size: 55)),
                  SizedBox(height: 12),
                  Text(
                    'Abhay ',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text('Student/ Flutter Learner '),
                  SizedBox(height: 10),
                  Text('+91 XXXXX XXXXX'),
                  Text(' abhay@example.com'),
                  Text('COER College'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
