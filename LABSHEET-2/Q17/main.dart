// LABSHEET-2 - Q17
// Question: Use the Card widget to display student information such as name, roll number, course, and semester.

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Student Card')),
        Text('Student Information'),
        body: Center(
          child: Card(
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Name: Abhay', style: TextStyle(fontSize: 22)),
                  Text('Semester: 5'),
                  Text('Section: A'),
                  Text('College: COER COllege'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
