// LABSHEET-2 - Q2
// Question: Display your name, course, semester, and college name using Text widgets.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Student Details')),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Name: Rahul', style: TextStyle(fontSize: 22)),
              Text('Course: BCA', style: TextStyle(fontSize: 22)),
              Text('Semester: 2', style: TextStyle(fontSize: 22)),
              Text('College: ABC College', style: TextStyle(fontSize: 22)),
            ],
          ),
        ),
      ),
    );
  }
}
